class AddApprovedBytoReimbursement < ActiveRecord::Migration[7.1]
  def change
    add_column :reimbursements, :approved_by, :string
  end
end
