json.id @user_purchase.id
json.created_at @user_purchase.created_at

json.purchase do
  json.partial! "/api/v1/user_purchases/details", locals: {purchase: @user_purchase.purchase}

  json.multimedia do
    json.id @user_purchase.purchase.purchaseable.id
    json.name @user_purchase.purchase.purchaseable.name
    json.description @user_purchase.purchase.purchaseable.description
    json.create_by @user_purchase.purchase.purchaseable.create_by
  end
end
