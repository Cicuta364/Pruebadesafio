class CreateUserAcounts < ActiveRecord::Migration
  def change
    create_table :user_acounts do |t|
      t.references :user, index: true, foreign_key: true
      t.references :acount, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
