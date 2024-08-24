class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :employee_name
      t.string :email

      t.timestamps
    end
  end
end
