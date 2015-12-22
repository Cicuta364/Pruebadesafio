class CreateAcounts < ActiveRecord::Migration
  def change
    create_table :acounts do |t|
      t.string :description
      t.integer :charge
      t.string :client
      t.string :acount_type
      t.datetime :date
      t.integer :balance

      t.timestamps null: false
    end
  end
end
