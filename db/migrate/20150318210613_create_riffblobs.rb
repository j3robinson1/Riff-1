class CreateRiffblobs < ActiveRecord::Migration
  def change
    create_table :riffblobs do |t|
      t.text :user_id
      t.attachment :file
      t.text :shoutout
      t.text :url
    end
  end
end
