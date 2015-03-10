require "ri03_clases"

RSpec.describe "ri03_clases" do
  let(:person) { Persona.new }
  subject { person }

  it "should define Persona as a class" do
    expect(defined? Persona).to_not eq(nil)
    expect(Persona.class).to eq(Class)
  end
  it { should respond_to :nombre }
  it { should respond_to :nombre= }
  it { should respond_to :edad }
  it { should respond_to :edad= }
  it { should respond_to :apellido }
  it { should respond_to :apellido= }

end
