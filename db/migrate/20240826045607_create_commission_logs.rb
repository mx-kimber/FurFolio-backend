class CreateCommissionLogs < ActiveRecord::Migration[7.1]
  def change
    create_table :commission_logs do |t|
      t.date :date
      t.integer :percentage
      t.integer :price
      t.decimal :calculated_commission
      t.integer :dog_id
      t.integer :user_id

      t.timestamps
    end
  end
end
