class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string   "name"
      t.integer  "shipping_rate_id"
      
      t.timestamps null: false
    end
  end
end
