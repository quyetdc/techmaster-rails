class AddFieldsToImage < ActiveRecord::Migration
  def change
    add_column :images, :file_crop_x, :integer
    add_column :images, :file_crop_y, :integer
    add_column :images, :file_crop_w, :integer
    add_column :images, :file_crop_h, :integer
  end
end
