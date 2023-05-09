class AddImageUrlToFoods < ActiveRecord::Migration[7.0]
  def change
    add_column :foods, :image_url, :string
  end
end
