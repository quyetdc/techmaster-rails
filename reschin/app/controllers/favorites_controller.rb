class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def create
    existed_fav = Favorite.where(
        restaurant_id: params[:favorite][:restaurant_id],
        user_id: current_user.id
    )

    if existed_fav.count > 0
      existed_fav.destroy_all
    else
      @favorite = Favorite.new(favorite_params)
      @favorite.user = current_user
      @favorite.save
    end

    respond_to do |format|
        format.json {
          render json: true, status: :ok
        }
    end
  end

  private

  def favorite_params
    params.require(:favorite).permit(:restaurant_id)
  end
end