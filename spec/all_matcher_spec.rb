RSpec.describe "all matcher" do
  #the below it example would be how we would usually test if the values in the array are odd in traditional ruby
  it "allows for aggregate checks" do
    # [5, 7, 9]. each do |val|
    #   expect(val).to be_odd
    # end
#the below is a more elegant example to achieve the same result as above
    expect([5, 7, 9, 13]).to all(be_odd)
    expect([4,6,8,10]).to all(be_even)
    expect([[],[],[]]).to all(be_empty)
    expect([0,0]).to all(be_zero)
    expect([5, 7, 9]).to all(be < 10)
  end

  describe [5, 7, 9] do
    it { is_expected.to all(be < 10)}
    it { is_expected.to all(be_odd)}
  end
end