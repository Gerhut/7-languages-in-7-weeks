class Tree
  attr_accessor :children, :node_name

  def initialize(name, children=[])

    @children = []
    if children.methods.include?('keys') # Hash
      children.each {|child| @children.push Tree.new(child[0], child[1])}
    elsif children.methods.include?('each_with_index') # Array
      children.each {|child, index| @children.push Tree.new(index, child)}
    else
      @children = children
    end
    @node_name = name
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end
end

ruby_tree = Tree.new( "Ruby", {
  'grandpa' => {
    'dad' => {
      'child 1' => {},
      'child 2' => {}
    },
    'uncle' => {
      'child 3' => {},
      'child 4' => {}
    }
  }
})

puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}
puts

puts "Visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}
puts