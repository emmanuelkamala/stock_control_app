class AddTypeToFlock < ActiveRecord::Migration[6.1]
  def change
    add_reference :flocks, :type, foreign_key: true
  end
end
