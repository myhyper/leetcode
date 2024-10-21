# frozen_string_literal: true
$dbg = `uname -a`.include?('Darwin') # set debug mode only for mac

# @param {String} path
# @return {String}
def simplify_path(path)

  components = path.split('/')
  stack = []
  
  components.each do |component|
    case component
    when '', '.'
      next
    when '..'
      stack.pop unless stack.empty?
    else
      stack.push(component)
    end
  end
  
  '/' + stack.join('/')
end

class MyLeet
  def self.run path
    simplify_path path
  end
end
