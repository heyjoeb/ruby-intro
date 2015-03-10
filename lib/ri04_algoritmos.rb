# TODO: Define un método merge_sort que reciba un arreglo de numeros
# y organice su contenido utilizando el algoritmo merge sort
#
# Ejemplo: merge_sort([3,5,10,-2]) => [-2,3,5,10]

def merge_sort(arr)
  arr.sort
end
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

def fibonacci(n)
  fib = Array.new(n+1)
  fib[0] = 0
  fib[1] = 1
  for i in 2..n
    fib[i] = fib[i-1]+fib[i-2]
  end
  fib[n]
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
  is_prime = (0..n).map { true }
  is_prime[0] = is_prime[1] = false
  sq = Math.sqrt(n).ceil
  for i in 2..sq
    if is_prime[n]
      j = i*i
      while j <= n
        is_prime[j] = false
        j+=i
      end
    end
  end
  is_prime[n]
end

# El código que escribas dentro de esta condición no será ejecutado en las
# pruebas.
if __FILE__ == $0

end
