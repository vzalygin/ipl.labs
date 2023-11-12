class ComputeController < ApplicationController
  def input
  end

  def is_palindrome(x)
    x = x.to_s
    return x == x.reverse
  end

  def view
    n = params[:n].to_i
    @result = (0..n)
      .select { |i| is_palindrome(i*i) }
  end
end
