json.extract! wishlist_item, :id, :item_id, :wishlist_id, :created_at, :updated_at
json.url wishlist_item_url(wishlist_item, format: :json)
