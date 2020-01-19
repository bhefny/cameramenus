class HomeController < ApplicationController
  def index
    @brands = Brand.first(10)
  end
end
