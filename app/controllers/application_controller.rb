class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :get_categories, :get_new_books, :get_best_sellers, only: [:show, :index, :wishlist, :search]

  def get_categories
    @categories = Category.all
  end

  def get_new_books
    @new_arrivals = Book.new_arrival
  end

  def get_best_sellers
    @best_sellers = Book.best_seller
  end
end
