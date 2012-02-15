class CreateShopActivityCodes < ActiveRecord::Migration
  def change
    create_table :shop_activity_codes, :id=>false do |t|
      t.primary_key :ac_actvty_id
      t.string :ac_actvty_cd, :limit=>9
      t.string :ac_desc, :limit=>30
      t.string :ac_create_from, :limit=>30
      t.date :ac_create_date
      t.string :ac_create_by, :limit=>30
    end
    change_column_default(:shop_activity_codes, :ac_actvty_id, nil)
    change_column(:shop_activity_codes, :ac_actvty_id, :integer, :limit => 4, :unique => true)
    add_index(:shop_activity_codes, :ac_actvty_id, :unique => true, :name => 'ac_actvty_id_idx')
  end
end
