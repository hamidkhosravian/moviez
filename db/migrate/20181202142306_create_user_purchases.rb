class CreateUserPurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :user_purchases do |t|
      t.references :user, foreign_key: true
      t.references :purchase, foreign_key: true

      t.timestamps
    end
  end
end
