json.extract! commission_log, :id, :date, :percentage, :price, :calculated_commission, :dog_id, :user_id, :created_at, :updated_at
json.url commission_log_url(commission_log, format: :json)
