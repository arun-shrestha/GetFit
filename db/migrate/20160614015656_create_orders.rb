class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string   "token"
      t.string   "state"
      t.integer  "address_id"
      t.integer  "items_count", :default => 0
      t.float    "total",       :default => 0.0
      t.float    "balance",     :default => 0.0
      
      t.timestamps null: false
    end
  end
end
