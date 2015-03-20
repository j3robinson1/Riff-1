class CreateRiffblobs < ActiveRecord::Migration
  def change
    create_table :riffblobs do |t|
      t.text :user_id
      t.attachment :image
      t.text :shoutout
    end
  end
end
