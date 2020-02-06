#typically when we want to test out a class method we type 
#RSpec.describe ".even? method" do
#an instance method we would type like
#RSpec.describe "#even? method" do

RSpec.describe "#even? method" do
  #it "should return true if number is even"
  #it "should return false if number is odd"
  # creating an if condition within the it is a bit complicated and adds complexity.
  #if we are using ifs, we are describing too much. when we are explaining soething, its better to just write nested describe blocks. 
  #we can use either context or describe. they are both the same thing but context probably reads better and reads more like english.
  #we can have a describe within another describe within another describe within context within describe. We are not limited. just make it logical to read and logical in the terminal.
  context "with even number" do
    it "should return true" do
      expect(4.even?).to eq(true)
    end
  end

  context "with odd number" do
    it "should return false" do
      expect(5.even?).to eq(false)
    end
  end
end