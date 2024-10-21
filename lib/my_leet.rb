# frozen_string_literal: true
$dbg = `uname -a`.include?('Darwin') # set debug mode only for mac

# @param {String} path
# @return {String}
def simplify_path(path)
  # Split the path into components by '/' and process each component
  components = path.split('/')
  
  # Use a stack to handle directory navigation
  stack = []
  
  components.each do |component|
    case component
    when '', '.'  # Ignore empty strings and '.' (current directory)
      next
    when '..'  # '..' means go up to the parent directory
      stack.pop unless stack.empty?
    else  # Valid directory or file name
      stack.push(component)
    end
  end
  
  # Join the stack to form the canonical path
  # If stack is empty, return '/'
  '/' + stack.join('/')
end

class MyLeet
  def self.run path
    simplify_path path
  end
end
