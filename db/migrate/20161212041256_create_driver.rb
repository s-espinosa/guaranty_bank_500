class CreateDriver < ActiveRecord::Migration[5.0]
  def change
    create_table :drivers do |t|
      t.string :name
    end
  end
end
