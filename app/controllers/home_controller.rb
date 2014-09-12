class HomeController < ApplicationController
  def index
    @genre = Genre.new
  end
end
