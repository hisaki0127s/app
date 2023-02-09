class CreateMuscles < ActiveRecord::Migration[6.1]
  def change
    create_table :muscles do |t|
      t.string :menu
      t.string :site
      t.string :about
      t.string :time
      t.string :interval

      t.timestamps
    end
  end
end
