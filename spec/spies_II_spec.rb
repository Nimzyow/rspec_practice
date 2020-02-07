#similar functionality to spies exists in allow method

class Car
  def initialize(model)
    @model = model
  end
end

class Garage
  attr_reader :storage
  def initialize
    @storage = []
  end

  def add_to_collection(model)
    @storage.push(Car.new(model))
  end
end
#we need to fake the car class, and the car instance. We want ot test Garage here, what goes on inside car is irrelevant. We create an instance of Car through Car.new so we want to create an instance_double of that instance to mimick.
RSpec.describe Garage do
  let(:car) { instance_double(Car) }

  before do
    allow(Car).to receive(:new).and_return(car)
  end

  it "adds a car to its storage" do
    subject.add_to_collection("Honda Civic")
    expect(Car).to have_received(:new).with("Honda Civic")
    expect(subject.storage.length).to eq(1)
    expect(subject.storage.first).to eq(car)
  end
end