class ListingsController < ApplicationController
    before_action :authenticate_user!
    def index
        # if params.has_key?[:category_id]
        #     @listings = Listing.where(category_id: params[:category_id])
        # else
            @categories = Category.all
            @listings = Listing.all
        # end
    end
    def new
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