#compound expectation means combining more than 1 expectation on a single line. the way we do that is by using .and or .or method. 
RSpec.describe 25 do
  it "can test for multiple matchers" do
    #expect(subject).to be_odd
    #expect(subject.to be > 20)

    expect(subject).to be_odd.and be > 20
  end
  it {is_expected.to be_odd and be > 20}
end

RSpec.describe "caterpillar" do
  it "supports multiple matches on a single line" do
    expect(subject).to start_with("cat").and end_with("pillar")
  end

  it{is_expected.to start_with("cat") and end_with("pillar")}
end

RSpec.describe [:usa, :canada, :mexico] do
  it "can check for multiple possibilites" do
    expect(subject.sample).to eq(:usa).or eq(:canada).or eq(:mexico)
  end
end

RSpec.describe "firetruck" do

  it "starts with substring fire and ends with truck" do
  
  expect(subject).to start_with("fire").and end_with("truck")
  end
  end