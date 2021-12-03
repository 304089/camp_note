class CreateGears < ActiveRecord::Migration[6.1]
  def change
    create_table :gears do |t|
      t.integer :user_id, null: false
      t.string :name, null: false
      t.string :introduction
      t.integer :amount, null: false
      t.string :gear_image_id
      t.timestamps
    end
  end
end
