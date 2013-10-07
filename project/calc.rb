#Calc class
class Calc
  attr_reader :arg_list
  def initialize
    @arg_list = []
  end

  def get(*params)
    @arg_list << params
  end

  def plus
    sum_result = @arg_list.flatten.inject{|sum, num| sum += num}
    clean
    sum_result
  end

  def minus
    substr_result = 0 - @arg_list.flatten.inject{|sum, num| sum += num}
    clean
    substr_result 
  end
  

  def clean
    @arg_list = []
  end

end

