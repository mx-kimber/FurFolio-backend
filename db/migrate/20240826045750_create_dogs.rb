class CreateDogs < ActiveRecord::Migration[7.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.text :note
      t.integer :price
      t.string :service
      t.integer :user_id

      t.timestamps
    end
  end
end
