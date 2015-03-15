class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :firstName
      t.string :lastNmae
      t.date :birthDate
      t.text :status
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.attachment :avatar
      t.integer :zip, :limit => 5
      t.integer :Cell, :limit => 8
      t.integer :Home, :limit => 8

      t.timestamps null: false
    end
  end
end
