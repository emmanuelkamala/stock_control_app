class AddTypeToFlock < ActiveRecord::Migration[6.1]
  def change
    add_reference :flocks, :status, null: false, foreign_key: true
  end
end
