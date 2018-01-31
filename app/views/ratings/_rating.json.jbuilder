json.extract! rating, :id, :strain_id, :user_id, :score, :comment, :product_type, :token, :created_at, :updated_at
json.url rating_url(rating, format: :json)
