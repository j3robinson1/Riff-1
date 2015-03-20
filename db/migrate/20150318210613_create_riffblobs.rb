class CreateRiffblobs < ActiveRecord::Migration
  def change
    create_table :riffblobs do |t|
      t.text :user_id
      t.attachment :image
      t.text :fullname
      t.attachment :file
      t.text :shoutout
    end
  end
end
