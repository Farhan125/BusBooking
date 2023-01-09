class CreateUserhomepages < ActiveRecord::Migration[7.0]
  def change
    create_table :userhomepages do |t|
      t.date :date
      t.string :departure
      t.string :arrival
      t.references :confirmed_route, null: false, foreign_key: true

      t.timestamps
    end
  end
end
