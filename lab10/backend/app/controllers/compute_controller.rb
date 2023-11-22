# frozen_string_literal: true

require 'libxml'

class ComputeController < ApplicationController
  def input; end

  def is_palindrome(x)
    x = x.to_s
    x == x.reverse
  end

  def view
    n = params[:n].to_i
    @result = (0..n)
              .select { |i| is_palindrome(i * i) }

    respond_to do |format|
      format.html
      format.json do
      render json:
      {type: @result.class.to_s, value: @result}
      end
      format.xml do 
        { @result }.to_xml
      end
    end
  end
end
