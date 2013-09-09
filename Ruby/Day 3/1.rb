class Row
  def self.headers= headers
    @@headers = headers
  end

  def initialize data
    @data = data
  end
  
  def method_missing name, *args
    index = @@headers.index(name.to_s)
    if index.nil?
      raise(NoMethodError.new(
        "undefined method '#{name}' for #{inspect}:#{self.class}"
      ));
    else
      @data[index]
    end
  end
end

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
      Row.headers = @headers = file.gets.chomp.split(', ')

      file.each do |row|
        @csv_contents << row.chomp.split(', ')
      end
    end

    attr_accessor :headers, :csv_contents

    def initialize
      read
    end

    def each
      @csv_contents.each do |row|
        yield Row.new(row)
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
