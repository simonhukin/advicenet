class PagesController < ApplicationController
  def home
    @title = "Home"
    @current_page = "home"
  end

end
