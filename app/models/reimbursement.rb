class Reimbursement < ApplicationRecord

  validates :amount, presence: true

  validate on: [:update, :create] do
    errors.add(:amount, "Amount cannot be zero") if amount == 0
  end
end
