class AddApprovalTimetoReimbursement < ActiveRecord::Migration[7.1]
  def change
    add_column :reimbursements, :approval_time, :datetime
  end
end
