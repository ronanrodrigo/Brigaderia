class Product < ActiveRecord::Base
  attr_accessible :name, :description, :price, :image
  mount_uploader :image, ImageUploader
end
