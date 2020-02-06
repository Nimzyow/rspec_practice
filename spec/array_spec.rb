RSpec.describe Array do
  it "should show empty array" do
    expect(subject.length).to eq(0)
    subject.push("Hello")
    expect(subject.length).to eq(1)
  end
end

#2.The subject helper method returns a new instance of the Array class.
#3.With a class argument, RSpec is able to instantiate an instance of the class and make it lazily available via the subject method.