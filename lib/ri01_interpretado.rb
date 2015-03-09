puts "Interpretando #{__FILE__}"

def metodo_que_si_funciona_aunque_tiene_errores
  if false
    codigo con errores
  end
  puts "Dentro de metodo que si funciona aunque tiene errores"
end

def metodo_que_no_va_a_funcionar
  puts "Dentro de metodo que no va a funcionar"
  esto no va a funcionar
end

metodo_que_si_funciona_aunque_tiene_errores
metodo_que_no_va_a_funcionar
