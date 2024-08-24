class CreateReimbursements < ActiveRecord::Migration[7.1]
  def change
    create_table :reimbursements do |t|
      t.string :employee_email
      t.string :employee_name
      t.string :type
      t.integer :amount

      t.timestamps
    end
  end
end
