class Expense < ActiveRecord::Base
  belongs_to :user
  belongs_to :item
  validates :item, :price, presence: true

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

  def self.calculate_expense(params)
    Expense.where(item_id: params[:item_id], purchase_date: params[:duration_start]...params[:duration_end])
  end
end
