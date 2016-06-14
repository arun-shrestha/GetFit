class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.string :avatar
      t.text :description
    	t.string :verification_doc
    	t.boolean :verified
    	t.references :typ_fee
      t.timestamps null: false
    end
  end
end
