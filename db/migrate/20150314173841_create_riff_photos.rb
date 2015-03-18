class CreateRiffblobs < ActiveRecord::Migration
  def change
    create_table :riffblobs do |t|
      t.string :shoutout
      t.string :user_id
      t.timestamps null: false
    end
    # add_index :riffblobs, :user_id
    # add_index :riffblobs, :processed
  end
end
