class CreateThrows < ActiveRecord::Migration[6.1]
  def change
    create_table :throws do |t|
      t.integer :knocked_pins, default: 0

      t.timestamps
    end
  end
end
