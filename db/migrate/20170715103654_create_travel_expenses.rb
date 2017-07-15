class CreateTravelExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :travel_expenses do |t|
      t.datetime :start
      t.datetime :end
      t.float :price
      t.string :location

      t.timestamps
    end
  end
end
