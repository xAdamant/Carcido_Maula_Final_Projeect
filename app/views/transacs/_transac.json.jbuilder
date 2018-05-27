json.extract! transac, :id, :name, :date, :item, :quantity, :total, :created_at, :updated_at
json.url transac_url(transac, format: :json)
