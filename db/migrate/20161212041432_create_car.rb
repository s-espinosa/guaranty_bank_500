class CreateCar < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.integer :max_speed
      t.integer :monetary_value
      t.references :driver, foreign_key: true
      t.references :owner, foreign_key: true
    end
  end
end
