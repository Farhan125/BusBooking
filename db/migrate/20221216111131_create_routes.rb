class CreateRoutes < ActiveRecord::Migration[7.0]
  def change
    create_table :routes do |t|
      t.string :name
      t.string :departure
      t.string :arrival

      t.timestamps
    end
  end
end
