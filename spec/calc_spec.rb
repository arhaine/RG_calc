require 'rspec'
require 'simplecov'
SimpleCov.start
require './project/calc'

describe 'Calc' do
  it "method plus" do
    obj = Calc.new
    obj.get(1,2,3)
    obj.get(1)
    obj.plus.should == 7
  end

  it "method minus" do
    obj = Calc.new
    obj.get(1,2,3)
    obj.get(1)
    obj.minus.should == -7
  end

  it "plus clearing and minus" do
    obj = Calc.new
    obj.get(1,2,3)
    obj.plus.should == 6
    obj.get(5,6,7)
    obj.minus.should == -18
  end  

  it "minus clearing and plus" do
    obj = Calc.new
    obj.get(1,2,3)
    obj.minus.should == -6
    obj.get(5,6,7)
    obj.plus.should == 18
  end  

end
