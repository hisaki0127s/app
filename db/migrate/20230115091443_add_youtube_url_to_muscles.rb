class AddYoutubeUrlToMuscles < ActiveRecord::Migration[6.1]
  def change
    add_column :muscles, :youtube_url, :string
  end
end
