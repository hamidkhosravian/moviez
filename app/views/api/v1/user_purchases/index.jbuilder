json.purchases @user_purchases do |user_purchase|
  json.id user_purchase.id
  json.created_at user_purchase.created_at

  json.multimedia do
    json.name user_purchase.purchase.purchaseable.name
    json.create_by user_purchase.purchase.purchaseable.create_by
  end
end
