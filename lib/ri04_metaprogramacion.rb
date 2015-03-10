
def setter(name)
  define_method("#{name}=") do |val|
    instance_variable_set("@#{name}", val)
  end
end

# TODO: Define un metodo llamado getter que agregue un getter a una clase.
# Toma como ejemplo el método setter que definimos arriba.


# TODO: Define un metodo llamado getter_y_setter que agregue un getter y un
# setter a una clase.
