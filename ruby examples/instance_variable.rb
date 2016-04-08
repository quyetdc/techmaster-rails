## instance_variable.rb
## created by Colin Dao, June 2014

class Customer
   def initialize(name, email)      
      @customer_name = name
      @customer_email = email
   end
   def print_customer_info
      puts "Customer name: #@customer_name"
      puts "Customer email: #@customer_email"
   end
end

customer1 = Customer.new("colin", "colindao@techmaster.vn")
customer1.print_customer_info
## => Customer name colin
## => Customer email colindao@techmaster.vn