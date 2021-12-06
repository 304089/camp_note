class AddColumnGears < ActiveRecord::Migration[6.1]
  def change
    add_column :gears, :ganre, :integer, null: false
  end
end
