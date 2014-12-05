class CreateDoors < ActiveRecord::Migration
  def change
    create_table :doors do |t|
      t.boolean :open

      t.timestamps null: false
    end
  end
end
