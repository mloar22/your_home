json.array!(@homes) do |home|
  json.extract! home, :id, :category, :make, :year, :model, :price, :discription, :owner, :email, :phone
  json.url home_url(home, format: :json)
end
