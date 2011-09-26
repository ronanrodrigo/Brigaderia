class AddFeaturedToProducts < ActiveRecord::Migration
  def change
    add_column :products, :featured, :boolean
  end
end
