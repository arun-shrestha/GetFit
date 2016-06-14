class CreateCompanyAddresses < ActiveRecord::Migration
  def change
    create_table :company_addresses do |t|

      t.timestamps null: false
    end
  end
end
