class AddImageToMuscles < ActiveRecord::Migration[6.1]
  def change
    add_column :muscles, :image, :string
  end
end
