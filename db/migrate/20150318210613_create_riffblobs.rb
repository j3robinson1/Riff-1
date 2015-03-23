class CreateRiffblobs < ActiveRecord::Migration
  def change
    create_table :riffblobs do |t|
      t.string :user_id, :default => "1"
      t.attachment :file
      t.text :shoutout
      t.text :url
      t.string :pointer, :default => "1"
    end
  end
end
