class StaticPagesController < ApplicationController
  require 'flickr'

  def index
    flickr = Flickr.new
    @user_id = params[:user_id]
    return if @user_id.nil?

    @photos = flickr.photos.search(user_id: params[:user_id])
  end
end
