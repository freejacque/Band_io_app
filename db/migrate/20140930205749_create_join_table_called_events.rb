class CreateJoinTableCalledEvents < ActiveRecord::Migration
  def change
    create_join_table :venues, :bands, table_name:
    :events do |t|
      t.date :date, :null => false
      t.boolean :alcohol_served, :default => true
    end
  end
end
