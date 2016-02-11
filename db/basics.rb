module Basics
  extend self
  
  def integer(args)
    self.decimal(args.merge(digits: 0)).to_i
  end

  def decimal(args)
    max = args[:max]
    min = args[:min]
    digits = args[:digits]
    result = (max-min)*rand()+min
    result.round(digits)
  end
end
