class HomeController < ApplicationController
  before_filter :authenticate_user!, :only => :admin
  
  def index
    featureds = Product.where(:featured => true)
    @products = featureds.blank? ? Product.limit(5).all : featureds
    @contact = Contact.new()
  end
  
  def admin
  end
end
