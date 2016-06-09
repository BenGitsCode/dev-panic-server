class AddForeignKeyToSymptoms < ActiveRecord::Migration
  def change
    add_reference :symptoms, :user, index: true, foreign_key: true
  end
end
