class Deck
  def self.build
    #business logic to build a whole bunch of cards
  end
end

class CardGame
  attr_reader :cards
  def start
    @cards = Deck.build
  end
end

RSpec.describe CardGame do
  it "can only implement class methods that are defined on a class" do
    #if we do not have a class called Deck, the test will fail. when we are using a TDD approach, this will very likely be the case. we would not have created the Deck class at this stage. We can turn Deck into a string "Deck", and the test will pass.
    #as_stubbed_const will always replace the actual Deck class with the class_double.
    #quick overview: we create class_double becuase the functionality we wanted to mock out did not exist on an instance of deck, but exists on a class deck itself. so to mock that we use class_double and pass in class name as first argument. we can pass in a string of the class name too. We then right the class method and return values for the deck class as a hash. we add as_stubbed_const to verify that whenever the example Deck is used in any examples moving forward which the start method does, we need to make sure thats replaced by our class double and that is what as_stubbed_const does.
    deck_klass = class_double(Deck, {build: ["Ace", "Queen"]}).as_stubbed_const

    expect(deck_klass).to receive(:build)
    subject.start
    expect(subject.cards).to eq(["Ace", "Queen"])
  end
end