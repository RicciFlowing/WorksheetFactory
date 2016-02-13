module Basics
  extend self


  class Integer < ::Integer
    def self.in_range(args)
      max = args[:max]
      min = args[:min]
      result = (max-min)*rand()+min
      result.round(0)
    end
  end

  class Float < ::Float
    def self.in_range(args)
      max = args[:max]
      min = args[:min]
      digits = args[:digits]
      result = (max-min)*rand()+min
      result.round(digits)
    end
  end

  class Fraction
    attr_reader :denominator, :numerator

    def initialize(args = {})
      @denominator = args[:denominator] || Basics::Integer.in_range(min: 2, max: 10)
      @numerator   = args[:numerator] || Basics::Integer.in_range(min: 1, max: @denominator)
    end

    def to_s
      "$\\frac{#{@numerator}}{#{@denominator}}$"
    end

    def *(y)
      Fraction.new(
      denominator:@denominator  * y.denominator,
      numerator: @numerator    * y.numerator
      )
    end

    def /(y)
      self*Fraction.new(denominator: y.numerator, numerator: y.denominator)
    end

    def +(y)
      new_denominator = @denominator.lcm(y.denominator)
      factor_1 = new_denominator/@denominator
      factor_2 = new_denominator/y.denominator
      Fraction.new(
      denominator: new_denominator,
      numerator:  factor_1* @numerator    +  factor_2 * y.numerator
      )
    end

    def -(y)
      self+Frac.new(denominator: y.denominator, numerator: -y.num)
    end

    def reduce
      factors = factors(@denominator) & factors(@numerator)
      if factors.empty?
        self
      else
        Fraction.new(denominator: @denominator/factors.max, numerator: @numerator/factors.max).reduce
      end
    end

    private
    def factors(number)
      factor_list = []
      (2..number/2).each do |possible_factor|
        factor_list.push(possible_factor) if number.modulo(possible_factor).zero?
      end
      factor_list
    end
  end
end

# p 'Integer between 2 and 1000'
# p Basics::Integer.in_range(min: 2, max: 1000)
# p 'Integer between -2 and -1000'
# p Basics::Integer.in_range(min: -1000, max: -2)
# p 'Decimal between 2 and 5 with 3 digits'
# p Basics::Float.in_range(min: 2, max: 5, digits: 3)
# p 'Fraction'
# p Basics::Fraction.new({}).to_s
#
# frac1 = Basics::Fraction.new({})
# frac2 = Basics::Fraction.new({})
#
# p "#{frac1.to_s} * #{frac2.to_s} = #{(frac1*frac2).to_s}"
#
# p "#{frac1.to_s} + #{frac2.to_s} = #{(frac1+frac2).to_s}"
#
# frac3 =  Basics::Fraction.new(denominator: 56, numerator:42 )
#
# p "#{frac3.to_s} gekürzt= #{frac3.reduce.to_s}"
