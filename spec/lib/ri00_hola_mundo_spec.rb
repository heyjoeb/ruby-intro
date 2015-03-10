
RSpec.describe "ri00_hola_mundo" do

  it "should call puts with string 'Hola Mundo!'" do

    expect(STDOUT).to receive(:puts).with("Hola Mundo!")
    require "ri00_hola_mundo"

  end

end
