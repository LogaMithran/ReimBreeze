class AddAdditionalColumnstoEmployee < ActiveRecord::Migration[7.1]
  def change
    add_column :employees, :designation, :string
    add_column :employees, :department, :string
  end
end
