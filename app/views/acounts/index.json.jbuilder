json.array!(@acounts) do |acount|
  json.extract! acount, :id, :description, :charge, :client, :acount_type, :date, :balance
  json.url acount_url(acount, format: :json)
end
