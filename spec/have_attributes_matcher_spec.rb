class ProfessionalWrestler
  attr_reader :name, :finishing_move
  def initialize(name, finishing_move)
    @name = name
    @finishing_move = finishing_move
  end
end

RSpec.describe "have_attributes matcher" do
  describe ProfessionalWrestler.new("stone cold steve austin", "stunner") do
    it "checks for object attributes and proper values" do
      expect(subject).to have_attributes(name: "stone cold steve austin")
      expect(subject).to have_attributes(name: "stone cold steve austin", finishing_move: "stunner")
    end
    it {is_expected.to have_attributes(name: "stone cold steve austin", finishing_move: "stunner")}
  end
end