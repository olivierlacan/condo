class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.belongs_to :building

      t.string :name
      t.string :website

      t.timestamps
    end
  end
end
