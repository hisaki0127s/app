class AddQuestion2ToTests < ActiveRecord::Migration[6.1]
  def change
    add_column :tests, :question2, :string
  end
end
