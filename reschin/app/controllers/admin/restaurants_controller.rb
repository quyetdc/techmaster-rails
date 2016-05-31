class Admin::RestaurantsController < AdminController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to admin_restaurants_path
    else
      render :new
    end
  end
  #
  # def show
  # end
  #
  #
  def edit
    @restaurant = Restaurant.find(params[:id])
  end
  #
  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update(restaurant_params)
      redirect_to admin_restaurants_path
    else
      render :edit
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :about, :image, category_ids: [])
  end
end
