class Reimbursement < ApplicationRecord

  validates :amount, presence: true

  validate on: [:update, :create] do
    errors.add(:amount, "Invalid amount") if amount == 0
  end
end
