# TODO: Define un método merge_sort que reciba un arreglo de numeros
# y organice su contenido utilizando el algoritmo merge sort
#
# Ejemplo: merge_sort([3,5,10,-2]) => [-2,3,5,10]


# TODO: Define un método fibonacci que reciba un número n y devuelva
# el n-simo número de fibonacci.
#
# Ejemplo:
# fibonacci(0) => 0
# fibonacci(1) => 1
# fibonacci(2) => 1
# fibonacci(3) => 2
# fibonacci(4) => 3
# fibonacci(5) => 5
# fibonacci(13) => 233
def fibonacci( n )
  return  n  if ( 0..1 ).include? n
  ( fibonacci( n - 1 ) + fibonacci( n - 2 ) )
end



# TODO: Define un método es_primo? que reciba un número n y retorne
# true si n es primo y false si n no es primo
#
# es_primo?(1) => false
# es_primo?(2) => true
# es_primo?(4) => false
# es_primo?(33) => false
# es_primo?(37) => true
# es_primo?(859) => true
def es_primo?(n)
	if n == 2
		return true
	end
    2.upto(Math.sqrt(n).ceil) do |i|
        break if n%i==0
        return true if i==Math.sqrt(n).ceil   
    end
    return false
end



# El código que escribas dentro de esta condición no será ejecutado en las
# pruebas.
if __FILE__ == $0

end
