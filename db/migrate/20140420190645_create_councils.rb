class CreateCouncils < ActiveRecord::Migration
  def change
    create_table :councils do |t|
      t.belongs_to :building

      t.integer :year

      t.timestamps
    end
  end
end
