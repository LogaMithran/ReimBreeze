class Employee < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :designation, presence: true
  validates :department, presence: true

  before_save :add_employee_name

  def add_employee_name
    self.employee_name = self.first_name + " " + self.last_name
  end
end
