## class_variable.rb
## created by Colin Dao, June 2014

class Class1  
  def demo_local_variable(input_local_variable)
    begin 
      puts "local variable as input #{input_local_variable}"  		
      local_variable = 100
      puts "local variable #{100}"

      [1, 2].each do |i|
        in_block_local_variable = i
        puts "in_block_local_variable #{in_block_local_variable}"
      end

      puts "call in_block_local_variable outside --> "
      puts "#{in_block_local_variable}"
    rescue Exception => e
      puts e.message
    end
  end
end

class1_obj = Class1.new
class1_obj.demo_local_variable(10)
# local variable as input 10
# local variable 100
# in_block_local_variable 1
# in_block_local_variable 2
# call in_block_local_variable outside --> 
# undefined local variable or method `in_block_local_variable'
