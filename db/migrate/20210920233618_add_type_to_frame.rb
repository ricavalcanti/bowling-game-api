class AddTypeToFrame < ActiveRecord::Migration[6.1]
  def change
    add_column :frames, :frame_type, :integer, default: 0
  end
end
