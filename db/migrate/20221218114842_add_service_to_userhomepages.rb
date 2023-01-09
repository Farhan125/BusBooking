class AddServiceToUserhomepages < ActiveRecord::Migration[7.0]
  def change
    add_column :userhomepages, :service, :string
    add_reference :userhomepages, :company, null: false, foreign_key: true
  end
end
