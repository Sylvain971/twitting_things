class HomeController < ApplicationController
  def index
  end

  def create
  	@content = params[:tweet][:content]
  	SendTweet.new(@content).perform
  	redirect_to root_path
  end
end
