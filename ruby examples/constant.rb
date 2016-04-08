## Class: Closed Range. Example: [1, 10]
## Created by quyetdc, June - 2014

class ClosedRange
  ## Khai bao hang so de de dang thay doi va su dung
  ERROR_MESSAGE_INVALID_RANGE = "Invalid range initialization. " + 
                                 "Lower end point must be smaller than upper end point"
  ERROR_MESSAGE_NOT_NUMBER = "Both lower end point and upper end point must be a number"

  ## Khai bao hang so --> code de hieu hon, khong phai su dung nhung so nay trong code ( magic number )
  ERROR_CODE_INVALID_RANGE = 1  
  ERROR_CODE_NOT_NUMBER = 0

  attr_accessor :lower_end_point, :upper_end_point, :is_valid, :error_message, :error_code

  def initialize(lower_point = 0, upper_point = 0)
    if !lower_point.is_a?(Fixnum)
      self.is_valid = false
      self.error_message = ERROR_MESSAGE_NOT_NUMBER
      self.error_code = ERROR_CODE_NOT_NUMBER
      return
    end

    if lower_end_point < upper_end_point     ## Lay gia tri khong can dung self
      self.lower_end_point = lower_point     ## Khi gan gia tri can dung self
      self.upper_end_point = upper_point
      self.is_valid = true
    else
      self.is_valid = false
      self.error_code = ERROR_CODE_INVALID_RANGE
      self.error_message = ERROR_MESSAGE_INVALID_RANGE
    end
  end
end
