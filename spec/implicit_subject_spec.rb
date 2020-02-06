RSpec.describe Hash do
  #lets say we want to test a hash. we could write teh let code below. that way, we would be lazy loading it. its totally valid but not necessary.
  #we could use subject. which is taking the subject in the describe and instantiating it. whatever class is under test, it is instantiating an instance of that class for us and assigning it to the helper method or variable.
  #let(:my_hash) {{}}
#behind the scences, rspec makes it so that subject is = Hash.new
  it "should start off empty" do
    expect(subject.length).to eq(0)
    subject[:some_key] = "Some Value"
    expect(subject.length).to eq(1)
  end

  it "is isolated between examples" do
    expect(subject.length).to eq(0)
  end

end