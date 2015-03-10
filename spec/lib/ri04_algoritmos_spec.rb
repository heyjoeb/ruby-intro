require "ri04_algoritmos"

RSpec.describe "ri04_algoritmos" do

  it "should define merge_sort" do
    expect(defined? merge_sort).to eq("method")
    arrs = [
      []
      [1]
      [1..10].to_a
      (1..10).to_a.shuffle
      (1..1000).to_a.shuffle,
    ]
    arrs.each do |arr|
      expect(merge_sort(arr)).to eq(arr.sort)
    end
  end


  it "should define fibonacci" do
    expect(defined? fibonacci).to eq("method")
    nums = (1..50).to_a
    nums.each do |n|
      expect( fibonacci(n) ).to eq( fibonacci_sol(n) )
    end
  end

  it "should define es_primo?" do
    expect( defined? es_primo? ).to eq( "methods" )
    expect( es_primo(1) ).to eq(false)
    expect( es_primo(0) ).to eq(false)
    expect( es_primo(100) ).to eq(false)
    expect( es_primo(2) ).to eq(true)
    expect( es_primo(5) ).to eq(true)
    expect( es_primo(11) ).to eq(true)
    expect( es_primo(13) ).to eq(true)
    expect( es_primo(15) ).to eq(false)
    expect( es_primo(37) ).to eq(true)
    expect( es_primo(33) ).to eq(false)
    expect( es_primo(859) ).to eq(true)

    nums = (1..100).map { rand 10000 }
    nums.each do |n|
      expect(es_primo?(n)).to eq( es_primo_sol?(n) )
    end

  end

end

def fibonacci_sol(n)
  fib = Array.new(n+1)
  fib[0] = 0
  fib[1] = 1
  for i in 2..n
    fib[i] = fib[i-1]+fib[i-2]
  end
  fib[n]
end

def es_primo_sol?(n)
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
