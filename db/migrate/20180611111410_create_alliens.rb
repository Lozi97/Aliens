class CreateAlliens < ActiveRecord::Migration[5.1]
  def change
    create_table :alliens do |t|
      t.string :name
      t.string :image
      t.string :desc

      t.timestamps
    end
  end
end
