class IndexController < ApplicationController
  def index
    @posts = Yazilar.all
  end
  def show
    @yazi = Yazilar.find(params[:id])
  end
end
