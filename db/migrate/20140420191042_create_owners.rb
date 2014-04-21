class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.belongs_to :building
      t.belongs_to :user
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
