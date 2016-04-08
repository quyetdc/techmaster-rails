## File Processing
## Created by quyetdc, June - 2014

begin
  file_name = "/unexistant_file"
  file = File.open(file_name, 'r')
  puts "File opened successfully" if file
rescue Exception => e
  puts e.message                                  ## Hiển thị exception
  file_name = "existant_file"
  retry                                           ## Thực hiện lại khối begin từ đầu
ensure
  ## Đoạn code trong ensure luôn được thực hiện dù có exception xảy ra không
  puts "End process"
end

begin
  raise 'A test exception.'
rescue Exception => e
  puts e.message                                  ## A test exception.
  puts e.backtrace.inspect                        ## filename:line
end