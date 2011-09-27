class HomeController < ApplicationController
  before_filter :authenticate_user!, :only => :admin
  
  def index
    featureds = Product.where(:featured => true)
    simples = Product.where(:featured => false)
    @featured_products = featureds.blank? ? simples.limit(5) : featureds.limit(5)
    @simple_products = simples.limit(5)
    @contact = Contact.new()
  end
  
  def admin
  end
end
