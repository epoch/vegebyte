class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :body

      t.timestamps null: false
    end
  end
end
