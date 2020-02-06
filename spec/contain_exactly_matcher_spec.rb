RSpec.describe "contain_exactly matcher" do
  subject{[1,2,3]}
#if we want to check for order then we can use eq. but if we dont care about that and we just want to check if the elements we want exist in an array we can use cotain_exactly
  describe "long form syntax" do
    it "should check for the presence of all elements" do
      expect(subject).to contain_exactly(3,2,1)
      expect(subject).to contain_exactly(2,1,3)
      expect(subject).to contain_exactly(1,2,3)

      #expect(subject).to contain_exactly(1,2)
      #expect(subject).to contain_exactly(1,2,3,4)

    end
  end
  it { is_expected.to contain_exactly(1,2,3) }
  it { is_expected.to contain_exactly(3,2,1) }
end