class CreateShopActivities < ActiveRecord::Migration
  def change
    create_table :shop_activities, :id=>false do |t|
      t.primary_key :av_shop_id
      t.integer :av_actvty_id, :limit=>4
      t.integer :av_os_id, :limit=>4
      t.integer :av_service_id, :limit=>4
      t.text :av_remarks
      t.string :av_create_from, :limit=>30
      t.date :av_create_date
      t.string :av_create_by, :limit=>30
    end
      change_column_default(:shop_activities, :av_shop_id, nil)
      change_column(:shop_activities, :av_shop_id,:integer, :limit => 4, :unique => true)
      add_index(:shop_activities, :av_shop_id, :name => 'av_shop_id_idx')
  end
end
