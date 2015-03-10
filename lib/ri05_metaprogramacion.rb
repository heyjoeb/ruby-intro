
def setter(name)
  define_method("#{name}=") do |val|
    instance_variable_set("@#{name}", val)
  end
end


# TODO: Define un metodo llamado getter que agregue un getter a una clase.
# Toma como ejemplo el método setter que definimos arriba.

def getter(name)
  define_method("#{name}") do
    instance_variable_get("@#{name}")
  end
end

# TODO: Define un metodo llamado getter_y_setter que agregue un getter y un
# setter a una clase.

def getter_y_setter(name)
  getter name
  setter name
end












# El código que escribas dentro de esta condición no será ejecutado en las
# pruebas.
if __FILE__ == $0

end
