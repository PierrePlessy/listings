class ListingsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @listings = Listing.search(params)

    # respond_to do |format|
    #   format.html
    #   format.json { render :xml => @listings.to_xml }
    # end
  end

  def new
    @listing = Listing.new
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def create
    @listing = Listing.new(listing_params)

    if @listing.save
      redirect_to listings_path
    else
      render template: '/listings/new'
    end

  end

  def contact
    message = Messenger.new(
      user: current_user,
      listing_id: params[:listing_id].to_i,
      content: params[:content]
    ).call

    if message.errors.any?
      render json: {success: false, errors: message.errors}.to_json, status: 422
    else
      render json: {success: true}.to_json
    end
  end

private
  def listing_params
    params.required(:listing).permit(:title, :description, :picture, :price, :category_id).merge(user_id: current_user.id)
  end
end
