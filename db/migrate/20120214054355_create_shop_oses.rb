class CreateShopOses < ActiveRecord::Migration
  def change
    create_table :shop_oses, :id=>false do |t|
      t.primary_key :os_id
      t.string :os_cd, :limit=>9
      t.string :os_name, :limit=>30
      t.string :os_create_from, :limit=>30
      t.date :os_create_date
      t.string :os_create_by, :limit=>30
    end
      change_column_default(:shop_oses, :os_id, nil)
      change_column(:shop_oses, :os_id, :integer, :limit => 4, :unique => true)
      add_index(:shop_oses, :os_id, :unique => true, :name => ' os_id_idx')
  end
end
