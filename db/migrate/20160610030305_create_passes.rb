class CreatePasses < ActiveRecord::Migration
  def change
    create_table :passes do |t|
      t.text :crud
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
