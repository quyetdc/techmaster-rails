## Class: Module.
## Created by quyetdc, June - 2014

module A
  def a
    puts "a"
  end
end

module B
  def b
    puts "b"
  end
end

class Sample
  include A
  include B

  def s
    puts "s"
  end
end

samp = Sample.new
samp.a  ## => a
samp.b  ## => b
samp.s  ## => s