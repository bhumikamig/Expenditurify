module ItemsHelper
  def item_name(item_id)
    Item.find(item_id).name
  end
end
