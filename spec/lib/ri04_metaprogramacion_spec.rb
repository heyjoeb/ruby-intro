require "ri04_metaprogramacion"

RSpec.describe "ri04_metaprogramacion" do

  describe "#getter" do
    it "should define getter" do
      expect(defined? getter).to eq("method")
    end

    it "should add a getter to a class" do
      class Curso
        getter "nombre"
        def initialize(nombre)
          @nombre = nombre
        end
      end

      nombre = "intro a ruby on rails"
      curso = Curso.new(nombre)
      expect(curso).to respond_to("nombre")
      expect(curso.nombre).to eq(nombre)
    end

  end

  describe "#getter_y_setter" do
    it "should define getter_y_setter" do
      expect(defined? getter_y_setter).to eq("method")
    end

    it "should add a getter and a setter to a class" do
      class Animal
        getter_y_setter "nombre"
      end
      nombre = "intro a ruby on rails"
      animal = Animal.new
      expect(animal).to respond_to("nombre")
      expect(animal).to respond_to("nombre=")

      animal.nombre = nombre
      expect(animal.nombre).to eq(nombre)
    end

  end

end
