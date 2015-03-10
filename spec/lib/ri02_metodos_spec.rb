require "ri02_metodos"

RSpec.describe "ri02_metodos" do

  it "should define saludar" do
    expect(defined? saludar).to_not eq(nil)
    expect(saludar("Simón")).to eq("Hola Simón")
  end

  it "should define sumar" do
    expect(defined? sumar).to_not eq(nil)
    expect(sumar(3,2)).to eq(3+2)
    expect(sumar(-5,8)).to eq(-5+8)
    expect(sumar(0,0)).to eq(0)
  end

  it "should define sumar_varios" do
    expect(defined? sumar_varios).to_not eq(nil)
    expect(sumar_varios(3,2)).to eq(5)
    expect(sumar_varios(1,1,1,1)).to eq(4)
    expect(sumar_varios(0,0,0,0,0,0,0,0,0,0)).to eq(0)
    expect(sumar_varios(1)).to eq(1)
  end
end
