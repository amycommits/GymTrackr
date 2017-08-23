class GymInfo < ApplicationRecord
  has_many :user_gym_info_raids
  has_many :users, through: :user_gym_info_raids
end
