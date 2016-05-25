class Admin::BannersController < ApplicationController
  layout 'admin'

  def index
    @banners = Banner.all
  end

  def new
    @banner = Banner.new
  end

  def create
    @banner = Banner.create(banners_params)

    if @banner.save
      redirect_to admin_banners_path
    else
      render :new
    end
  end

  private

  def banners_params
    params.require(:banner).permit(:image, :name, :article_id, :description)
  end
end