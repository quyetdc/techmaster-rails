  ## class_variable.rb
  ## created by Colin Dao, June 2014

class Class1
  @@class_variable = 10
  def print_class
    puts "Class variable in Class1 is #{@@class_variable}"
  end

  def increase_class_variable
    @@class_variable += 1
  end

  def print_uninitialized_class_variable
    begin
      puts "#{@@uninitialized_class_variable}"
    rescue Exception => e
      puts e.message
    end
  end
end

class1_obj = Class1.new
class1_obj.print_class ## => Class variable in Class1 is 10
class1_obj.increase_class_variable
class1_obj.print_class ## => Class variable in Class1 is
class1_obj.print_uninitialized_class_variable
## => uninitialized class variable @@uninitialized_class_variable in Class1

