class AddDishIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :dish_id, :integer
  end
end
