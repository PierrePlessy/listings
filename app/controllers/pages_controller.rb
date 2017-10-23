class PagesController < ApplicationController

  def show
    @Page = Page.find(params[:id])
  end

end
