class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :generics
  def generics
    featureds = Product.where(:featured => true)
    simples = Product.where(:featured => false)
    @featured_products = featureds.blank? ? simples.limit(5) : featureds.limit(5)
  end
end
