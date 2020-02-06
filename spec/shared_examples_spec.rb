RSpec.shared_examples "a Ruby object with 3 elements" do
  it "returns the number of items" do
    expect(subject.length).to eq(3)
  end
end
#the shared_examples further reduces boilerplate and makes our test more dynamic. we give it a string which is the identifier. and then when we are testing the class, we say include_examples and the identifier string. this is fantastic for repetitive expectations and streamlines eveyrthing.

#The include_examples method injects predefined examples into an example group.
RSpec.describe Array do
  subject {[1, 2, 3]}
  include_examples "a Ruby object with 3 elements"
end

RSpec.describe String do
  subject { "abc"}
  include_examples "a Ruby object with 3 elements"
 
end

RSpec.describe Hash do
  subject {{a: 1,b: 2, c: 3}}
  include_examples "a Ruby object with 3 elements"
end

class SausageLink
  def length
    3
  end
end

RSpec.describe SausageLink do
  subject { described_class.new}
  include_examples "a Ruby object with 3 elements"
end