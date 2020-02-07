RSpec.describe "allow method review" do
  it "can customize return value for methods on doubles" do
    calculator = double
    allow(calculator).to receive(:add).and_return(15)
    expect(calculator.add).to eq(15)
    expect(calculator.add(2)).to eq(15)
  end

  it "can stub one or more methods on a real object" do
    arr = [1, 2, 3]
    #we can write our tests so that we intersept the sum method on the array and just ask it to return 10, even though the array above adds to 6. we dont need to necessarily create doubles or anything, we can use allow to give us an alternative return value when testing a unit
    allow(arr).to receive(:sum).and_return(10)
    expect(arr.sum).to eq(10)

    arr.push(4)
    expect(arr).to eq([1,2,3,4])
  end

  it "can return multiple return values in sequence" do
    #we are emulating how an array works without actually using a real array. we can replace an array with a double that acts like an array. we can mimick the behaviour of an object for testing purposes. We don't actually have to create an array to do this. this isnt limited to arrays and can be applied to any object like hash, string or anything
    mock_array = double
    allow(mock_array).to receive(:pop).and_return(:c, :b, nil)
    expect(mock_array.pop).to eq(:c)
    expect(mock_array.pop).to eq(:b)
    expect(mock_array.pop).to be_nil
    expect(mock_array.pop).to be_nil
    expect(mock_array.pop).to be_nil
    expect(mock_array.pop).to be_nil
    expect(mock_array.pop).to be_nil


  end
end