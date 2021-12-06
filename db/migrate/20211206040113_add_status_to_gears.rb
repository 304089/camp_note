class AddStatusToGears < ActiveRecord::Migration[6.1]
  def change
    add_column :gears, :genre, :integer, null: false
  end
end
