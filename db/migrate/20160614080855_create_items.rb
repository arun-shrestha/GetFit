class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer  "product_id"
      t.integer  "order_id"
      t.integer  "quantity",   :default => 0
      t.float    "sub_total",  :default => 0.0

      t.timestamps null: false
    end
  end
end
