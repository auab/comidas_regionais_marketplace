class RemoveImageUrlFromFoods < ActiveRecord::Migration[7.0]
  def change
    remove_column :foods, :image_url, if_exists: true
  end
end
