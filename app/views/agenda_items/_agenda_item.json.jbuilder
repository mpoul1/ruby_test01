json.extract! agenda_item, :id, :title, :created_at, :updated_at
json.url agenda_item_url(agenda_item, format: :json)
