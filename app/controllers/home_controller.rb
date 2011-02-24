class HomeController < ApplicationController

  before_filter :authenticate, :only => "admin"


  layout "application"

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

#  def import2
#
#    file = params[:file]
#
#    File.open(file).each do |l|
#     # line = Array.new
#      line = l.split( /,/)
##      if Category.find_by_name(line[1].to_s).nil?
##      new_category = Category.create(:name => line[1].to_s)
##      category_id = new_category.id
##      else
##        category_id = Category.find_by_name(line[1].to_s).id
##      end
#
#      category_id = Category.find_or_create_by_name(line[1].to_s).id
#
#
#      if line[3].nil? || line[3].empty?
#      abbreviation = line[0].slice(0,2).capitalize
#      else
#      abbreviation = line[3].to_s
#      end
#      Language.create(:name => line[0].to_s, :category_id => category_id.to_i, :year => line[2].to_i, :abbreviation => abbreviation)
#    end
#  end
end