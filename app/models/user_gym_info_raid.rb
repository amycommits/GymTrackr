class UserGymInfoRaid < ApplicationRecord
  belongs_to :user
  belongs_to :gym_info
end
