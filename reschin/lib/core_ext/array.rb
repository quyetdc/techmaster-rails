class Array
  # transfrom an array to another array of arrays, each element array contains maximum number elements
  def transform(number)
    new_arr = [[]]
    self.map do |e|
      if new_arr.last.count < number
        new_arr.last << e
      else
        new_arr << [e]
      end
    end

    new_arr
  end
end