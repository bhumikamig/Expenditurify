class Expense < ActiveRecord::Base
  belongs_to :user
  belongs_to :item

  def as_json(options = {})
    {
      id: self.id,
      title: Item.find(self.item_id).name,
      price: self.price,
      color: Item.find(self.item_id).color,
      description: self.description || "",
      start: self.purchase_date.rfc822,
      end: self.purchase_date.rfc822.to_time + 2.hours,
      url: Rails.application.routes.url_helpers.expense_path(id)
    }
  end
end
