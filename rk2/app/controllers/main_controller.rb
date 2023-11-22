# frozen_string_literal: true

class MainController < ApplicationController
  def index
    redirect_to '/main/input'
  end

  def input; end

  def replace(after)
    max_v = after.max
    min_v = after.min
    i = if !after.find_index(&:negative?).nil?
          after.find_index(&:negative?)
        else
          after.find_index { |x| x == min_v }
        end
    after[i] = max_v
    after
  end

  def result
    arr_t = params[:arr_t].split.map(&:to_i)
    @before = arr_t
    @after = if !arr_t.empty?
               replace(arr_t.map(&:clone))
             else
               []
             end
  end
end
