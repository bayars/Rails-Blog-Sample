class DemoController < ApplicationController
  layout false
  def index
    @od = params['od'].to_i
    @pages = params[:pages].to_i
  end
  def hello
    # render('index')
    @array = [1,4,1,5,63,21]
    @id = params['id'].to_i
    @page = params[:page].to_i
  end
  def test_hello
    redirect_to(:controller => 'demo',:action => 'index')
  end
  def google
    redirect_to("http://google.com")
  end
end
