class CreateRiffblobs < ActiveRecord::Migration
  def change
    create_table :riffblobs do |t|
      t.string :name
      t.text :scr
      t.string :_id

      t.timestamps null: false
    end
  end
end
