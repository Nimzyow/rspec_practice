RSpec.describe Array do
  subject { [1, 2] }

  it "check if length is 2" do
    expect(subject.length).to eq(2)
  end

  it {is_expected.to eq([1,2])}

end