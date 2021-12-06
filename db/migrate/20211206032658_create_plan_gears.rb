class CreatePlanGears < ActiveRecord::Migration[6.1]
  def change
    create_table :plan_gears do |t|
      t.integer :plan_id
      t.integer :gear_id
      t.timestamps
    end
  end
end
