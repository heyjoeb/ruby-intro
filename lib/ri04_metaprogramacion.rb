def add_setter(name)
  define_method("#{name}=") do |val|
    instance_variable_set("@#{name}", val)
  end
end

def add_getter(name)
  define_method(name) do
    instance_variable_get("@#{name}")
  end
end

class Greeter
  add_setter "name"
  add_getter "name"
end
