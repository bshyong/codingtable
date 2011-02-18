class HomeController < ApplicationController
  def index
    @languages = Language.all
  end

  def admin
  end

end