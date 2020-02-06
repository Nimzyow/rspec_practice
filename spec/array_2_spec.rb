RSpec.describe Array do
  subject(:sally) do
    ["Name", "Sally"]
  end

  it "has a length of 2" do
    expect(sally.length).to eq(2)
    sally.pop
    expect(sally.length).to eq(1)
  end

  it "sally is still length of 2" do
    expect(sally).to eq(["Name", "Sally"])
  end
end