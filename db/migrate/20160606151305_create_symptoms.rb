class CreateSymptoms < ActiveRecord::Migration
  def change
    create_table :symptoms do |t|
      t.string :title
      t.text :solution
      t.string :url
      t.string :media
      t.boolean :private
      t.references :user, index: true, foreign_key: true, null: false
      t.timestamps null: false
    end
  end
end
