class CreateParties < ActiveRecord::Migration[6.1]
  def change
    create_table :parties do |t|
      t.string :name
      t.string :date
      t.integer :category_id
      t.integer :budget
      t.boolean :private

      t.timestamps
    end
  end
end
