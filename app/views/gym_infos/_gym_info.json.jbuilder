json.extract! gym_info, :id, :name, :address, :latitude, :longitude, :created_at, :updated_at
json.url gym_info_url(gym_info, format: :json)
