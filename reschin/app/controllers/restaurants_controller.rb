class RestaurantsController < ApplicationController
  def index
    @banners = Banner.all.to_a.transform(3)
    @categories = Category.all
  end
end
