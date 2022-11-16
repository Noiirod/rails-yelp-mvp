class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :restaurants, :phoneNumber, :phone_number
  end
end
