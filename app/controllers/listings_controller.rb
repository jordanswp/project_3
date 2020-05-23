class ListingsController < ApplicationController
    before_action :authenticate_user!, :except => [:index, :show]

    def index
        @categories = Category.all
        if params[:category_id].blank?
            @listings = Listing.all
            @current_category = 'All'
        else
            @listings = Listing.where(category_id: params[:category_id])
            @current_category = Category.find(params[:category_id]).name
        end
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
        @room = Room.new
    end
    
  def listing_params
    params.require(:listing).permit(:title, :image_url, :price, :description, :category_id)
  end

end


