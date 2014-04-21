class CreateSyndics < ActiveRecord::Migration
  def change
    create_table :syndics do |t|
      t.belongs_to :building

      t.string :name
      t.string :address
      t.string :contact
      t.string :phone
      t.string :website

      t.timestamps
    end
  end
end
