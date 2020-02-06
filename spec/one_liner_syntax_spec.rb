RSpec.describe "shorthand syntax" do
  subject { 5 }

  context "with classic syntax" do
    it "should equal 5" do
      expect(subject).to eq(5)
    end
  end

  context "with my one liner syntax" do
    #we still use it. the below is_expected which evaluates the subject only. you provide a block immediately and use is_expected. this is an advantage of declaring subject at the very top.
    it {is_expected.to eq(5)}
  end

end