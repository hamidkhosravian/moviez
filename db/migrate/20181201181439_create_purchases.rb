class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.references :purchaseable,  polymorphic: true

      t.timestamps
    end
  end
end
