class ListingsController < ApplicationController
    before_action :authenticate_user!
    def index
        @categories = Category.all
        @listings = Listing.all
    end
    def new
        @listing = Listing.new
        @categories = Category.all
    end
    def create
        @listing = Listing.new(listing_params)
        @listing.user = current_user
        if @listing.save
            redirect_to @listing
          else
            render 'new'
          end
    end
    def show
        @listing = Listing.find(params[:id])
    end
    
  def listing_params
    params.require(:listing).permit(:title, :image_url, :price, :description, :category_id)
  end

end


