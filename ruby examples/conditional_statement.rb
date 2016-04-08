## Conditinal statements
## Created by quyetdc, June - 2014

if condition1
  ## Thực hiện đoạn code nếu condition1 là true, not nil
elsif condition1             ## we use elsif, not else if
  ## Thực hiện đoạn code nếu condition 1 là false, hoặc nil và
  ##                         condition 2 là true, not nil
else
  ## Thực hiện đoạn code nếu condition 1 false, hoặc nil và
  ##                         condition 2 là false hoặc nil
end

## Nếu đoạn code thực hiện đơn giản
code if condition

unless condition            ## Sử dụng unless thay cho if not
  # code... nếu condition false hoặc nil
else
  # code... nếu condition true
end

code unless condition

case object
when expression1
  ## ..code: Khi expression1 true nếu object là nil
  ##         khi object = expression 1
when expression2
else
end
