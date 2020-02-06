RSpec.describe "raise_error matcher" do
  
  def some_method 
    x
  end

  class CustomError < StandardError; end

  # it "can check for any error" do
  #   #the below syntax has an issue in that  program can go wrong in a number of ways and we are not guaranteeing its the error we expect by using the below syntax. be specific about errors so taht we are testing for the error we are looking for.
  #   expect{ some_method }.to raise_error
  # end
  it "can check for a specific error being raised" do
    expect {some_method}.to raise_error(NameError)
    #go to ruby docs for a list of errors like NameError or ZeroDivisionError
    expect {10/0}.to raise_error(ZeroDivisionError)
  end

  it "can check for user created error" do
    expect {raise CustomError}.to raise_error(CustomError)
  end

end