class HomeController < ApplicationController
  def index
    redirect_to "/admin/login"
  end
end
