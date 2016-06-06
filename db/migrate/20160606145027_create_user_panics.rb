class CreateUserPanics < ActiveRecord::Migration
  def change
    create_table :user_panics do |t|
      t.string :title
      t.text :solution
      t.string :url
      t.string :media

      t.timestamps null: false
    end
  end
end
