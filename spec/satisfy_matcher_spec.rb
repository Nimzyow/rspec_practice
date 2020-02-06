RSpec.describe "satisfy matcher" do
  #subject{"racecar"}
  subject{"racecars"}

  it "is a palindrome" do
    expect(subject).to satisfy{ |value| value == value.reverse }
  end
#the below satisfy accepts a string which will present itself as a custom error message when things go wrong. So if things go wrong, it will output "expected "racecars" to be a palindrome". this has the advantage of being easy to read rather than the above satisfy syntax which is only really for programmers to read.
#so if the satisfy expression evaluates to true, the test passes. if it evaluates to false, the test fails.
  it "can accept a custom error message" do
    expect(subject).to satisfy("be a palindrome") do |value| 
      value == value.reverse
    end
  end


end