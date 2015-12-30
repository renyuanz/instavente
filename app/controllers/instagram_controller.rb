class InstagramController < ApplicationController
  before_action :set_client, only: [:user_recent_media]
  
  def user_recent_media
    @user = @client.user
    @user_recent_media = @client.user_recent_media
  end
  
  private
  
  def set_client
    @client = Instagram.client(:access_token => session[:access_token])
  end
end
