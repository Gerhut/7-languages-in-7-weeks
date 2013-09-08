module ActsAsCsv

  def self.included(base)
    base.extend ClassMethods
  end
  
  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end
  
  module InstanceMethods

    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.txt'
      file = File.new(filename)
      @headers = file.gets.chomp.split(', ')

      file.each do |row|
        @csv_contents << row.chomp.split(', ')
      end
    end

    attr_accessor :headers, :csv_contents

    def initialize
      read
    end

    def each
      row_obj = Object.new
      row_obj.instance_variable_set :@headers, @headers
      def row_obj.method_missing name, *args
        index = @headers.index(name.to_s)
        if index.nil?
          nil
        else
          @row[index]
        end
      end
      @csv_contents.each do |row|
        row_obj.instance_variable_set :@row, row
        yield row_obj
      end
    end

  end

end

class RubyCsv
  include ActsAsCsv
  acts_as_csv
end

csv = RubyCsv.new
csv.each {|row| puts row.one}
