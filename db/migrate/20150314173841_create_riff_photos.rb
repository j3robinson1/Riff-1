class CreateRiffPhotos < ActiveRecord::Migration
  def change
    create_table :riff_photos do |t|
      t.string :photo_name
      t.string :owner
      t.string :shoutout
      t.attachment :image
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.timestamps null: false
    end
    # add_index :riff_photos, :user_id
    # add_index :riff_photos, :processed
  end
end
