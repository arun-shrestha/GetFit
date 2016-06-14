class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string   "street_address"
      t.string   "city"
      t.string   "state"
      t.integer  "post_code"
      t.integer  "phone"
      t.integer  "user_id"
      t.boolean  "default"
      t.integer  "country_id"

      t.timestamps null: false
    end
  end
end
