json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :name, :amount, :type, :date, :account_id
  json.url transaction_url(transaction, format: :json)
end
