class CreateRiots < ActiveRecord::Migration
  def change
    create_table :riots do |t|
      t.string :city_state
      t.integer :year
      t.string :date
      t.text :causes
      t.text :description_short
      t.text :description_long
      t.integer :deaths
      t.integer :injuries
      t.integer :num_arrested
      t.string :image
      t.string :url
      t.integer :damages
      t.integer :police_force
      t.integer :military_force
      t.integer :sum_of_force
      t.float :lat
      t.float :long
      t.integer :city_id

      t.timestamps null: false
    end
  end
end
