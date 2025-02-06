```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    # Handle missing methods here
    puts "Method '#{method_name}' not found"
  end

end

obj = MyClass.new(10)
obj.some_method  # This will not raise an error, but will print a message
obj.value # This will not cause an error, it returns the instance variable value
```