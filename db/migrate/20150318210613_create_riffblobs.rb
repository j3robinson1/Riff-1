class CreateRiffblobs < ActiveRecord::Migration
  def change
    create_table :riffblobs do |t|
      t.text :photo_name
      t.text :owner
      t.attachment :image
      t.text :shoutout
    end
  end
end
