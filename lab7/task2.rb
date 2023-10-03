# frozen_string_literal: true

class Int
  def initialize(value)
    @i_value = value.to_i
  end

  def to_s
    @i_value.to_s
  end

  def print
    puts self
  end

  def number_of_digits
    @i_value.abs.to_s.length
  end
end

class IntAndFloat < Int
  def initialize(ivalue, fvalue)
    super ivalue
    @f_value = fvalue
  end

  def to_s
    "#{super} #{@f_value}"
  end

  def print
    puts self
  end
end
