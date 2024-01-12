class CreateTransfers < ActiveRecord::Migration[7.1]
  def change
    create_table :transfers do |t|
      t.decimal :value
      t.string :description
      t.datetime :hapenned_on
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
