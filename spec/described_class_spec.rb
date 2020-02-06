class Prince
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

RSpec.describe Prince do
  #described_class will reference the class we are testing. so we dont have to write King.new. so this avoids rewrite. This is a lot more future proof. This makes the code dynamic. This is far more stable. Now we dont have to remember what the class name is. 
  subject {described_class.new("Boris")}
  let(:louis) {described_class.new("Louis")}

  it "represents a mental person" do
    expect(subject.name).to eq("Boris")
    expect(louis.name).to eq("Louis")
  end
end