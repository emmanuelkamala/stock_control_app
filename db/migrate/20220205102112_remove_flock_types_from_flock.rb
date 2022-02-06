class RemoveFlockTypesFromFlock < ActiveRecord::Migration[6.1]
  def change
    remove_column :flocks, :flock_type, :string
  end
end
