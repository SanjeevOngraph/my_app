class DemoController < ApplicationController
  layout false
  def index
  	render('index')
  end
  def home
  	@home = [1,2,3,4,5,6,7,8,9,10]
  	render('home')
  end
  def home1
  	redirect_to(:controller => 'demo', :action => 'index')
  	#redirect_to(:action => 'index')
  end
  def youtube
  	redirect_to('http://youtube.com')
  end
end
