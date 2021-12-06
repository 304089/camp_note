class RemoveAuthorFromGears < ActiveRecord::Migration[6.1]
  def change
    remove_column :gears, :ganre, :integer
  end
end
