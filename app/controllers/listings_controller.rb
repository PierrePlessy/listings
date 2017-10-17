class ListingsController < ApplicationController

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
    @Listing = Listing.new(listing_params)

    if @listing.save
      redirect_to listing_path
    else
      render template: '/listings/new'
    end

  end

  def contact
    Contact.generate(
      user_id: current_user.id,
      listing_id: params[:listing_id],
      message: params[:message]
    )
  end

private
  def listing_params
  end
end
