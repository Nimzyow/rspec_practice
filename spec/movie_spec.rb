#create two classes so we can do testing on
class Actor
  def initialize(name)
    @name = name
  end
  def ready?
    sleep(3) #waits 3 seconds before continuing with procedure
    true
  end
  def act
    "I love you baby"
  end
  def fall_off_ladder
    "Call my agent, no way!"
  end
  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      actor.act
      actor.fall_off_ladder
      actor.light_on_fire
      actor.act
    end
  end
end

# actor = Actor.new("Brad Pitt")
# movie = Movie.new(actor)
# movie.start_shooting

RSpec.describe Movie do
  let(:stuntman) {double("Mr. Danger", {ready?: true, act: "I love you baby", fall_off_ladder: "Call my agent, no way im doing that!", light_on_fire: true})}
  #the stuntman is of course not an actor object we are sending to the movie class but it really doesnt matter. the movie class couldn't care less what object it is, all it cares about is that whatever the object is, that it responds to methods like fall_off_ladder.
  subject { described_class.new(stuntman) }
  
  describe "#start_shooting method" do
    it "expects an actor to do 3 actions" do
      #so our movie object doesnt have any other responsibility other than talking to the Actor class. if we want to test the specifics of the method, which comes from the Actor class, we will test it in there. the movie class only needs to be tested to see if subject.start_shooting works, assuming we pass it an object with the appropriate methods.
      # expect(stuntman).to receive(:ready?)
      # expect(stuntman).to receive(:act)
      # expect(stuntman).to receive(:fall_off_ladder)
      # expect(stuntman).to receive(:light_on_fire)
      #expect(stuntman).to receive(:light_on_fire).once
      #expect(stuntman).to receive(:light_on_fire).exactly(1).times
      expect(stuntman).to receive(:light_on_fire).at_most(1).times
      #expect(stuntman).to receive(:act).twice
      #expect(stuntman).to receive(:act).exactly(2).times
      expect(stuntman).to receive(:act).at_least(2).times
      subject.start_shooting
    end
  end
end