class AddImageDataToAlliens < ActiveRecord::Migration[5.1]
  def change
    add_column :alliens, :image_data, :text
  end
end
