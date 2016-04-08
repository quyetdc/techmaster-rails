## Class: ExampleClass.
## Created by quyetdc, June - 2014
class ExampleClass1
  @@class_variable = 1 			  # => khai báo biến dùng cho toàn class
  def initialize(x)						# => Hàm khởi tạo ( có thể không có )
    # code    							  # => Được gọi khi tạo object:
    #	                                ExampleClass.new(x, y)
  end

  def function						    # Member function
    # ...
  end
end

class ExampleClass2
  attr_reader   :only_readable_attribute
  attr_writer   :only_writable_attribute
  attr_accessor :readable_writable_attribute

  ## explanation of attr_writer
  ## calling ExampleClass2.new.only_writable_attribute
  def only_writable_attribute=(only_writable_attribute)
    @only_writable_attribute = only_writable_attribute
  end

  ## explanation of attr_reader
  ## calling ExampleClass2.new.only_readable_attribute
  def only_readable_attribute
    @only_readable_attribute
  end
end

## Class: Closed Range. Example: [1, 10]
## Created by quyetdc, June - 2014
class ClosedRange
  attr_accessor :lower_end_point, :upper_end_point, :is_valid, :error_message

  def initialize(lower_point = 0, upper_point = 0)
    if lower_end_point < upper_end_point
      self.lower_end_point = lower_point
      self.upper_end_point = upper_point
      is_valid = true      
    else
      is_valid = false
      error_message = "invalid input"
    end
  end

  def return_result(result)
    if is_valid
      return result
    else
      return error_message
    end
  end

  def select_lower_end_point
    return_result lower_end_point
  end

  def select_upper_end_point
    return_result upper_end_point
  end 
end
