json.extract! dog, :id, :name, :breed, :note, :price, :service, :user_id, :created_at, :updated_at
json.url dog_url(dog, format: :json)
