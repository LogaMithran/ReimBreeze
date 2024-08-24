class RenameColumnInReimbursement < ActiveRecord::Migration[7.1]
  def change
    rename_column :reimbursements, :type, :reimbursement_type
  end
end
