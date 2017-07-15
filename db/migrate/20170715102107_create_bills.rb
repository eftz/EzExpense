class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|
      t.float :amount
      t.string :name

      t.timestamps
    end
  end
end
