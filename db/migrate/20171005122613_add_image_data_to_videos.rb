class AddImageDataToVideos < ActiveRecord::Migration[5.1]
  def change
  	add_column :videos, :image_data, :text
  end
end
