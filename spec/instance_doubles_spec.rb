#verifying double will check that the interface of a double mathces that of the class or isntance that it is mocking. RSPEC will check that the methods we are cheking on the double match the names on the instance methods that are defined on the class. it adds more strictness to the test but its actually rewarding because its doing an extra check to make sure you are actually mocking a real life object

class Person
  def a(seconds)
    sleep(seconds)
    "Hello"
  end
end

RSpec.describe Person do
  describe "regular double" do
    it "can implement any method" do
      person = double({a: "Hello", b: 20})
      #notice that we have added functionality "b:" that doesnt actually exist but the test will still pass. so there is more functionality on the double than there is on the class. We have nothing here to verify this.
      expect(person.a).to eq("Hello")
    end
  end
  describe "instance double" do
    #with instance doubles, we can now solve teh issue of closely mimicking the class method. rspec will now throw errors if we mimick a method on a class that doesn't exist or if we pass the wrong number of arguments to a method. instance double is preferred in a lot of cases but double is ok if strictness is not overly important. 
    it "can only implement methods that are defined on the class" do
      #person = instance_double(Person, {a: "Hello", b: 20})
      person = instance_double(Person)
      allow(person).to receive(:a).with(3).and_return("Hello")
      expect(person.a(3)).to eq("Hello")
    end
  end
end