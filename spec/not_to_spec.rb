RSpec.describe "not_to method" do
  it "checks for the inverse of a matcher" do
    expect(5).not_to eq(10)
    #below not equal in terms of object IDENTITY
    expect([1,2,3]).not_to equal([1,2,3])
    expect(10).not_to be_odd
    expect([1,2,3]).not_to be_empty

    expect(nil).not_to be_truthy

    expect("Philadelphia").not_to start_with("car")
    expect("Philadelphia").not_to end_with("Phil")

    expect(5).not_to respond_to(:length)

    expect([:a, :b, :c]).not_to include(:d)

    #if we were to provide a name error below, the test could still pass because we are not checking if it raises an error, we are being specific raising the error we want. So in the not_to case, it is often best to raise_error without providing specifics such as NameError 
    expect {11/3}.not_to raise_error

    

  end
end