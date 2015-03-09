# Todo es un objeto

# Arrays
datos = [
  # Numbers
  1, 3.14, 999999999999999999999999999999999999999,
  # Strings
  "Un String que sí escapa caracteres especiales \n",
  'Un string que no escapa caracteres especiales \n',
  #Symbols
  :simbolo, :otro_simbolo, :"Simbolos con espacios",
  # Hashs
  {
    :llave       => "Valor",
    "otra llave" => :otro_valor,
    3.14         => "PI",
  },
  # Regex
  /^\A+$/,
  # Boolean
  true, false,
  # Nil
  nil,
  # Classes
  String, Fixnum, Hash, Array,
  # Methods
  "hola".method(:upcase)
]

datos.each do |dato|
  # Interpolación de strings con #{ }
  puts "#{dato} -> #{dato.class}"
end
