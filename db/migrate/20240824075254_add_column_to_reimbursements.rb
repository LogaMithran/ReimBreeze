class AddColumnToReimbursements < ActiveRecord::Migration[7.1]
  def change
    add_column :reimbursements, :status, :string
  end
end
