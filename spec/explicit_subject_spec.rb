RSpec.describe Hash do
  #if we want to make sure that the hash that we want to test has an argument in it before we test, we can set up the hash below. This will then be the subject that the examples will utilise.
  subject(:bob) do
    {A: 1, B: 2}  
  end

  #let(:bob) {{a:1, b:2}}     - the following code will do the same job as above but rspec will have rspec syntax shortcuts. but we can still use let and if we decide to only ever use let for the rest of our careers, its really not a problem.

  it "has two key value pairs" do
    expect(subject.length).to eq(2)
    expect(bob.length).to eq(2)
  end

  describe "nested example" do
    it "has two key value pairs" do
      expect(subject.length).to eq(2)
      expect(bob.length).to eq(2)
    end
  end
end