## global_variable.rb
## created by Colin Dao, June 2014

$global_variable = 10
class Class1
  def print_global
     puts "Global variable in Class1 is #$global_variable"
  end

  def increase_global_variable
  	$global_variable += 1
  end
end
class Class2
  def print_global
     puts "Global variable in Class2 is #$global_variable"
  end
end

class1obj = Class1.new
class1obj.print_global ## => Global variable in Class1 is 10
class1obj.increase_global_variable
class2obj = Class2.new
class2obj.print_global ## => Global variable in Class1 is 11