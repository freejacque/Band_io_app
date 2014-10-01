class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name, :null => false, :unique => true
      t.string :city, :null => false
      t.string :state, :null => false
      t.boolean :family_friendly, :null => false, :default => false

      t.timestamps
    end
  end
end
