RSpec.shared_context "common" do
  before do
    @foods = []
  end

  def some_helper_method
    5
  end

  let(:some_variable) { [1, 2, 3]}
end

RSpec.describe "first example group" do
  include_context "common"

  it "can use outside instance variables" do
    expect(@foods.length).to eq(0)
    @foods << "Sushi"
    expect(@foods.length).to eq(1)
  end

  it "can reuse instance variables across different examples" do
    expect(@foods.length).to eq(0)
  end

  it "can use shared helper methods" do
    expect(some_helper_method).to eq(5)
  end

end

#imagine below is from another file. we can still use the shared_context method at the top here too. this reduces boiler plate. so common variables or methods or anything can just be made avaialbe everywhere rather than copy pasting everywhere.
#The include_context method injects context (i.e. before blocks, instance variables, helper methods, let variables) into an example group.
RSpec.describe "second example in a different file" do
  include_context "common"

it "can use shared let variables" do
  expect(some_variable).to eq([1,2,3])
end

end