class CreateFloors < ActiveRecord::Migration
  def change
    create_table :floors do |t|
      t.belongs_to :building
      t.integer :level

      t.timestamps
    end
  end
end
