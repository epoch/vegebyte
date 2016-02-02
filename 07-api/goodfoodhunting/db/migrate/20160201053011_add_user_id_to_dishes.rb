class AddUserIdToDishes < ActiveRecord::Migration
  def change
    add_reference :dishes, :user, index: true, foreign_key: true
  end
end
