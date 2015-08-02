json.array!(@expenses) do |expense|
  json.extract! expense, :id, :user_id, :item_id, :price, :description, :purchase_date
  json.url expense_url(expense, format: :json)
end
