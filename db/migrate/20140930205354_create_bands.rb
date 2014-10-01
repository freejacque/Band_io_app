class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name, :null => false, :unique => true
      t.string :genre, :null => false
      t.boolean :explicit_lyrics, :null => false, :default => false

      t.timestamps
    end
  end
end
