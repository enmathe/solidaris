Geocoder.configure(
  # [...]
  lookup: :google,
  api_key: ENV['GOOGLE_API_SERVER_KEY'],
  :units => :km,
  # [...]
)
