class RemoveStatusFromFlock < ActiveRecord::Migration[6.1]
  def change
    remove_column :flocks, :status, :string
  end
end
