require "ri02_metodos"

RSpec.describe "ri02_metodos" do

  it "should define saludar" do
    expect(defined? saludar).to eq("method")
    expect(saludar("Simón")).to eq("Hola Simón")
  end

  it "should define sumar" do
    expect(defined? sumar).to eq("method")
    expect(sumar(3,2)).to eq(3+2)
    expect(sumar(-5,8)).to eq(-5+8)
    expect(sumar(0,0)).to eq(0)
  end

  it "should define sumar_varios" do
    expect(defined? sumar_varios).to eq("method")
    expect(sumar_varios(3,2)).to eq(5)
    expect(sumar_varios(1,1,1,1)).to eq(4)
    expect(sumar_varios(0,0,0,0,0,0,0,0,0,0)).to eq(0)
    expect(sumar_varios(1)).to eq(1)
  end

  it "should define reversar_string" do
    expect(defined? reversar_string).to eq("method")
    strs = ["hola", "hola mundo", "make it real", "", "1", "12345689"]
    strs.each do |str|
      expect(reversar_string(str)).to eq(str.reverse)
    end
  end

  it "should define es_palindrome?" do
    expect(defined? es_palindrome?).to eq("method")
    strs = ["anita lava la tina","anitalavalatina","hola mundo","aabbaa","aabb"]
    strs.each do |str|
      expect(es_palindrome?(str)).to eq(es_palindrome_sol?(str))
    end
  end

  it "should define reversar_palabras" do
    expect(defined? reversar_palabras).to eq("method")
    strs = ["anita lava la tina","anitalavalatina","hola mundo","aabbaa",
      "curso de ruby on rails",""]
    strs.each do |str|
      expect(reversar_palabras(str)).to eq(reversar_palabras_sol(str))
    end
  end


  it "should define invertir_palabras" do
    expect(defined? invertir_palabras).to eq("method")
    strs = ["anita lava la tina","anitalavalatina","hola mundo","aabbaa",
      "curso de ruby on rails",""]
    strs.each do |str|
      expect(invertir_palabras(str)).to eq(invertir_palabras_sol(str))
    end
  end

end
def es_palindrome_sol?(s)
  s.gsub(" ","") == s.gsub(" ","").reverse
end
def reversar_palabras_sol(s)
  s.split.map(&:reverse).join(" ")
end
def invertir_palabras_sol(s)
  s.split.reverse.join(" ")
end
