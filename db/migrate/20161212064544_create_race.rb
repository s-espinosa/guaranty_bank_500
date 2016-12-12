class CreateRace < ActiveRecord::Migration[5.0]
  def change
    create_table :races do |t|
      t.integer :year
    end
  end
end
