class AddName2ToMuscles < ActiveRecord::Migration[6.1]
  def change
    add_column :muscles, :name2, :string
  end
end
