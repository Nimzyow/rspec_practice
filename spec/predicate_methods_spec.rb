RSpec.describe "predicate methods and predicate matchers" do
  it "can be tested with Ruby method" do
    result = 16 / 2
    expect(result.even?).to eq(true)
  end
#predicate matchers are rspec matchers that test any predicate methods, e.g .even? .odd? .zero? , in a very elegant and simple syntax. all you need is to start with be_  . so it can be be_zero be_odd be_even be_empty or anything.
  it "it can be tested with predicate matchers" do
    expect(16 / 2).to be_even
    expect(15).to be_odd
    expect(0).to be_zero
    expect([]).to be_empty
  end

  describe 0 do
    it { is_expected.to be_zero}
  end
end