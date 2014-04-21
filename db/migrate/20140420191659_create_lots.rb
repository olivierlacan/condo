class CreateLots < ActiveRecord::Migration
  def change
    create_table :lots do |t|
      t.belongs_to :owner
      t.belongs_to :floor

      t.timestamps
    end
  end
end
