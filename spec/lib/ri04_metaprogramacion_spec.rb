class Person
=begin
  public void setName(String name) {
    this.name = name;
  }
=end
  def name=(name)
    @name = name
  end
  def name
    @name
  end
end

RSpec.describe Person do
  it "Should respond to #name" do
    expect(Person.new).to respond_to(:name)
  end
  it "Should respond to #name=" do
    expect(Person.new).to respond_to(:name=)
  end
  it { should respond_to :age }
  it { should respond_to :age= }
  it { should respond_to :last_name }
  it { should respond_to :last_name= }
end
