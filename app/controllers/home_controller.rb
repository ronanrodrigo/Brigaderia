class HomeController < ApplicationController
  before_filter :authenticate_user!, :only => :admin
  
  def index
    @products = Product.limit(5).all
    @contact = Contact.new()
  end
  
  def admin
  end
end
