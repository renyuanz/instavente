class InstagramController < ApplicationController
  before_action :set_client, only: [:user_recent_media, :search]
  
  def user_recent_media
    @user = @client.user
    @user_recent_media = @client.user_recent_media
  end
  
  def search
    if !@client.tag_search(params[:q]).empty? && !params[:q].nil?
      @tags = @client.tag_search(params[:q])
      @tag_recent_media = @client.tag_recent_media(@tags[0].name)
    end
  end
  
  private
  
  def set_client
    @client = Instagram.client(access_token: session[:access_token])
  end
end
