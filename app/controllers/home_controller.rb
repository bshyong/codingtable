class HomeController < ApplicationController
  def index
    @languages = Language.all
    @heights = [9, 9, 7, 7, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 8, 8]
    @columns = Array.new

    @heights.each_with_index do |h, index|
      @columns << @languages.slice!(0, h)
    end

   if @columns.last.empty?
        @columns.pop
    end

#    @heights.each_with_index do |h, index|
#    eval("#{@column+index.to_s} = #{@languages.slice!(0, h)}")
#    end
  end

  def admin
  end

end