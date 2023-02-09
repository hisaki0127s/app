class CreateMuscleTagRelations < ActiveRecord::Migration[6.1]
  def change
    create_table :muscle_tag_relations do |t|
      t.references :muscle, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
