class CreateRiffblobs < ActiveRecord::Migration
  def change
    create_table :riffblobs do |t|
      t.string :user_id
      t.attachment :file
      t.text :shoutout
      t.text :url
      t.string :pointer
    end
  end
end
