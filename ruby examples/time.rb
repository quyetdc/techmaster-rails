require 'time'

time = Time.now                     ## Giờ hiện tại
time.year
time.month
time.day
time.yday                           ## Ngày thứ bn của năm

Time.parse('20070131')              ## Đổi string to time

time.strftime("%Y-%m-%d %H:%M:%S")  ## format string time

time.to_i                           ## chuyển giờ sang số integer của giây (tính từ 0:00:00 0, 0, 0)
Time.at(time.to_i)                  ## TÍnh giờ từ số integer

time - 10                           ## Time at 10 seconds ago
