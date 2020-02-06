#we are going to be mocking from now on. so for example, a mock dress rehearsal. a play would be performed from beginning to end but the audience isnt there for example.
#so lets say we are dealing with a app that has so many classes and theyre all communicating with each other. they are all tightly coupled. its difficult to test all of them at once. we want to test them one at a time ideally. so we can test one class for example, and mimick the behaviour of the other classes so that we can actually do unit testing to make sure the individual component works.
# think of double as the stunt man. the main actor is acting but the stuntman does the dangerous work. theyre a stand in and this is what double in this file is about.

RSpec.describe "a random double" do
  it "only allows defined methods to be invoked" do
    #As we can see, the double method helps us create an object with the name or identifier passed as the first argument, in this case: "Mr. Danger". We can then create a hash as a second argument to mimick a method and its output without actually going through the effort of creating a class and doing all the calculations within it.

    stuntman = double("Mr. Danger", {fall_off_ladder: "Ouch", light_on_fire: true})
    expect(stuntman.fall_off_ladder).to eq("Ouch")
    expect(stuntman.light_on_fire).to eq(true)

    #below is another way of writing the above stuntman variable. its personal preference really and one is not better than the other.
    # stuntman = double("Mr. Danger")
    # allow(stuntman).to receive(:fall_off_ladder).and_return("Ouch")
    # expect(stuntman.fall_off_ladder).to eq("Ouch")

    #below is yet another way of writing the syntax
    # stuntman = double("Mr. Danger")
    # allow(stuntman).to receive_messages(fall_off_ladder: "Ouch", light_on_fire: true)
    # expect(stuntman.fall_off_ladder).to eq("Ouch")
    # expect(stuntman.light_on_fire).to eq(true)
  end
end

#practice
RSpec.describe 'doubles' do
  it "tests the student's knowledge of the course's content" do
 
    db = double("Database Connection", {connect: true, disconnect: "Goodbye"})
    expect(db.connect).to eq(true)
    expect(db.disconnect).to eq("Goodbye")

    fs = double("File system")
    allow(fs).to receive(:read).and_return("Romeo and Juliet")
    allow(fs).to receive(:write).and_return(false)
  end
end