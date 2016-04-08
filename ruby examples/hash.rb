## Hash.
## Created by quyetdc, June - 2014

## Hash structure:
# {
#   key1: value1,
#   key2: value2,
#   key3: value3
# }

h = Hash.new              ## khởi tạo
h[:key] = "value"         ## Gán giá trị, sử dụng symbol hoặc string
h                         ## {:key => "value"}
h[:key]                   ## "value"
h.has_key?(:key)          ## true
h.has_value?("value")     ## true
h.keys                    ## trả về array các key của hash => [:key]
h.values                  ## trả về array các value của hash => ["value"]

h2 = Hash.new(100)  ## Khởi tạo với giá trị mặc định 100 cho key bất kì
h2[:key]            ## 100

h3 = { "a" => 100, "b" => 200, "c" => 300 }
h3.select {|k,v| k > "a"}  #=> {"b" => 200, "c" => 300}

h3.merge(h)               ## trả về 1 hash khác là gộp của 2 hash
                          ## { "a" => 100, "b" => 200, "c" => 300, :key => "value" }

h3.merge!(h)              ## Thay đổi hash
                          ## h3 = { "a" => 100, "b" => 200, "c" => 300, :key => "value" }
