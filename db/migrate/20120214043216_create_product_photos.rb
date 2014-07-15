class CreateProductPhotos < ActiveRecord::Migration
  def change
   create_table :product_photos, :id=>false do |t|
      t.primary_key :prphoto_id 
      t.string "prphoto_file_name", :limit=>200
      t.string "prphoto_content_type", :limit=>30
      t.integer :prphoto_file_size
      t.integer :product_id
      t.string " prphoto_del_flg", :limit =>1  
    end
  end
end
