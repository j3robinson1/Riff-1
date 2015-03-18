class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :firstName
      t.string :lastName
      t.date :birthDate
      t.text :status
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.attachment :avatar
      t.integer :zip, :limit => 5
      t.integer :cell, :limit => 8
      t.integer :home, :limit => 8

      t.timestamps null: false
    end
  end
end
