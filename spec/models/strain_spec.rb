require 'rails_helper'

RSpec.describe Strain, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  #Valida que sea un nombre único de las cepas
  it "validates uniqueness names of strain" do
    should validate_uniqueness_of(:name)
  end

  #No puede tener un nombre vacío 
  it "is invalid without a name" do
    strain = Strain.new(name: nil)
    expect(strain).to be_invalid
  end

  #Es inválido un nombre en blanco, o sea ""
  it "is invalid with a blank name" do
    strain = Strain.new(name: "")
    expect(strain).to be_invalid
  end

  #Validar nombre Carmenere 
  it "is valid with a name" do
    strain = Strain.new(name: "Carmenere")
    expect(strain).to be_valid
  end

end
