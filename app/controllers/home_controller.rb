class HomeController < ApplicationController
  def index
    @ip = request.remote_ip
    @users = User.all
  end
end
