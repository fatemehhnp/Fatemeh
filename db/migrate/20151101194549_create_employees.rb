class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :lastname
      t.date :DOB
      t.integer :experience

      t.timestamps null: false
    end
  end
end
