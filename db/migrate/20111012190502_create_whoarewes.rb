class CreateWhoarewes < ActiveRecord::Migration
  def change
    create_table :whoarewes do |t|
      t.text :description

      t.timestamps
    end
  end
end
