class DemoController < ApplicationController

  layout false
  
  def index
    render('index')
  end

  def hello
    @array = [1,2,3,4,5]
    @id = params['id']
    @page = params[:page]
    render('hello')
  end

  def other_hello
    redirect_to(:action => 'index')
  end

  def lynda
    external_url = 'https:www.lynda.com' 
    redirect_to  external_url, allow_other_host: true
  end

  def escape_output
  end

end
