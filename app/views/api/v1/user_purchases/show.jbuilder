json.id @user_purchase.id
json.created_at @user_purchase.created_at

json.purchase do
  json.id @user_purchase.purchase.id
  json.name @user_purchase.purchase.name
  json.price @user_purchase.purchase.price
  json.description @user_purchase.purchase.description
  json.purchase_type @user_purchase.purchase.purchase_type

  json.multimedia do
    json.id @user_purchase.purchase.purchaseable.id
    json.name @user_purchase.purchase.purchaseable.name
    json.description @user_purchase.purchase.purchaseable.description
  end
end
