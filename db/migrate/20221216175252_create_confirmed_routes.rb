class CreateConfirmedRoutes < ActiveRecord::Migration[7.0]
  def change
    create_table :confirmed_routes do |t|
      t.date :date
      t.time :dep_time
      t.time :arr_time
      t.references :bus, null: false, foreign_key: true
      t.references :route, null: false, foreign_key: true

      t.timestamps
    end
  end
end
