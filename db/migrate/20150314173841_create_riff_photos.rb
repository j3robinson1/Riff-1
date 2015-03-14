class CreateRiffPhotos < ActiveRecord::Migration
  def change
    create_table :riff_photos do |t|
      t.string :photo_name
      t.string :owner
      t.string :shoutout

      t.timestamps null: false
    end
    # add_index :riff_photos, :user_id
    # add_index :riff_photos, :processed
  end
end
