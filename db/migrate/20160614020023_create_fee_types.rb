class CreateFeeTypes < ActiveRecord::Migration
  def change
    create_table :fee_types do |t|

      t.timestamps null: false
    end
  end
end
