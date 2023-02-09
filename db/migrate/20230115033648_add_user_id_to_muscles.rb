class AddUserIdToMuscles < ActiveRecord::Migration[6.1]
  def change
    add_column :muscles, :user_id, :integer
  end
end
