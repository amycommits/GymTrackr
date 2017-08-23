class CreateGymInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :gym_infos do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
