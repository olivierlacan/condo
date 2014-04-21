class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :fax
      t.string :job
      t.string :description

      t.references :contactable, polymorphic: true
      t.timestamps
    end
  end
end
