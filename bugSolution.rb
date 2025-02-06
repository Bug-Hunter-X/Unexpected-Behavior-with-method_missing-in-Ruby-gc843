```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    # Raise a NoMethodError to provide clear error messages.
    # This prevents masking other potential issues.
    super 
  end

  # Explicitly define common methods to handle them directly rather than relying on method_missing.
  def value
    @value
  end
end

obj = MyClass.new(10)
begin
  obj.some_method # This will now raise NoMethodError
rescue NoMethodError => e
  puts "Error: #{e.message}"
end
obj.value # Returns instance variable value
```