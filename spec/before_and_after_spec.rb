RSpec.describe "before and after hooks" do
  before(:context) do 
    puts "Before context"
  end
#the above will run at the start of this whole test and only once
  after(:context) do
    puts "Test Completed"
  end
#teh above will run at the end of the whole test and only once
  before(:example) do
    puts "Before example"
  end
#the above will puts "before example" before every example
  after(:example) do
    puts "After example"
  end
#the above will puts "after example" after every example
  it "is just a random example" do
    expect(5*4).to eq(20)
  end

  it "is just another random example" do
    expect(3-2).to eq(1)
  end
end