class ListingsController < ApplicationController
    before_action :authenticate_user!
    def index
        @categories = Category.all
        @listings = Listing.all
    end

  def listing_params
    params.require(:listing).permit(:title, :image_url, :price, :description)
  end
end
