class CreatePrizes < ActiveRecord::Migration[7.0]
  def change
    create_table :prizes do |t|
      t.string :name
      t.integer :answer
      t.string :won_by, null: true
      t.datetime :date_won, null: true
      t.string :key, null: false

      t.timestamps
    end
  end
end
