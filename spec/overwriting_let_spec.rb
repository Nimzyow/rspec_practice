class ProgrammingLanguage
  attr_reader :name
  def initialize(name = "Ruby")
    @name = name
  end
end

RSpec.describe ProgrammingLanguage do
  let(:language) { ProgrammingLanguage.new("Python") }
  it "should store name of the language" do
    expect(language.name).to eq("Python")
  end

  context "with no argument" do
    let(:language) { ProgrammingLanguage.new}
    it "should should default to Ruby as name" do
      #every language variable is avaiable to all childs since its defined at the top. this is not application in reverse. if we define a let method HERE then we cannot use it in its parent and above.
      #if the let method is not defined with language is not defined here, it will travel up to find it. we can define it here and let the expectation to find the variable laguage in this block.
      expect(language.name).to eq("Ruby")
    end
  end
end