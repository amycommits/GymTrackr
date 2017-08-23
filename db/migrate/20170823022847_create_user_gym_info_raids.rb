class CreateUserGymInfoRaids < ActiveRecord::Migration[5.0]
  def change
    create_table :user_gym_info_raids do |t|
      t.references :user, foreign_key: true
      t.references :gym_info, foreign_key: true
      t.date :raided_on

      t.timestamps
    end
  end
end
