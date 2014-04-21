class CreateRepresentatives < ActiveRecord::Migration
  def change
    create_table :representatives do |t|
      t.belongs_to :council
      t.belongs_to :owner
      t.string :role

      t.timestamps
    end
  end
end
