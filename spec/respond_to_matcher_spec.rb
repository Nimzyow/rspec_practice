class HotChocolate
  def drink
    "Delicious"
  end
  def discard
    "Plop!"
  end
  def purchase(number)
    "Awesome I just purchased #{number} more hot chocolate beverages!"
  end
end

RSpec.describe HotChocolate do
  it "confirms that an object can respond to a method" do
    expect(subject).to respond_to(:drink)
    expect(subject).to respond_to(:discard)
    expect(subject).to respond_to(:drink, :discard, :purchase)
  end

  it "confirms an object can respond to a method with arguments" do
    expect(subject).to respond_to(:purchase)
    expect(subject).to respond_to(:purchase).with(1).arguments
  end

  it {is_expected.to respond_to(:purchase)}
  it {is_expected.to respond_to(:purchase).with(1).arguments}
end