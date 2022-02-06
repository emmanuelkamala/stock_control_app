class CreateFlocks < ActiveRecord::Migration[6.1]
  def change
    create_table :flocks do |t|
      t.integer :batch_no
      t.datetime :date_in
      t.datetime :expected_retirement_date
      t.string :flock_type
      t.string :source
      t.string :flock_stored
      t.integer :initial_stock
      t.integer :current_stock
      t.integer :age
      t.text :notes
      t.string :status

      t.timestamps
    end
  end
end
