## File Processing
## Created by quyetdc, June - 2014


## gets
puts "Enter a value: "
val = gets                ## Lấy giá trị mà người dùng nhập
puts val

# File
File.open("filename", "mode") do |aFile|     ## Tạo đối tượng aFile -> phụ thuộc vào mode để có thể đọc, ghi
  #... process the file object: aFile        ##                      mode: r, r+, w, w+, a, a+
end

aFile = File.new("input.txt", "r")
if aFile
  content = aFile.sysread(20)                 ## Đọc 20 ký tự đầu tiên của file
  puts content
else
  puts "Unable to open file!"
end

aFile = File.new("input.txt", "w+")           ## đọc - ghi, nếu file k tồn tại -> tạo  mới
aFile.syswrite("ABCDEF")                      ##  Ghi ra file

arr = IO.readlines("input.txt")               ## Đọc từng dòng của file và gán thành phần tử của mảng kết quả

File.file?( "text.txt" )                      ## true or false
