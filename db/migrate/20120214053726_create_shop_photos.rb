class CreateShopPhotos < ActiveRecord::Migration
  def change
    create_table :shop_photos, :id=>false do |t|
      t.primary_key :ph_id
      t.integer :ph_shop_id, :limit=>9,:null => false
      t.string :ph_name, :limit=>80
      t.string :ph_create_from, :limit=>30
      t.date :ph_create_date
      t.string :ph_create_by, :limit=>30
    end
     change_column_default(:shop_photos, :ph_id, nil)
     change_column(:shop_photos, :ph_id, :integer, :limit => 4, :unique => true)
     add_index(:shop_photos, :ph_shop_id, :name => 'ph_shop_id_idx')
     add_index(:shop_photos, :ph_id, :name => 'ph_id_idx')
  end
end
