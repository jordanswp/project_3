class ListingsController < ApplicationController

  before_action :authenticate_user!

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user

      if @listing.save
        redirect_to @listing
      else
        render plain: @listing.errors.messages
    end
  end

private
    def listing_params
      params.require(:listing).permit(:title, :image_url, :price, :description, :user_id, :category_id)
    end


end


