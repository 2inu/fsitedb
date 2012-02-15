class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops, :id=>false do |t|
      t.integer :sh_shop_id, :limit=>16,:unique => true, :null => false
      t.primary_key :sh_shop_cd
      t.string :sh_name, :limit=>45
      t.integer :sh_panchayat_id, :null => false,:limit=>16
      t.integer :sh_place_id,:null => false,:limit=>16
      t.integer :sh_dist_id, :null => false,:limit=>16
      t.string :sh_addr_1, :limit=>30
      t.string :sh_addr_2, :limit=>30
      t.string :sh_addr_3, :limit=>30
      t.string :sh_addr_4, :limit=>30
      t.integer :sh_phone_1, :limit=>20
      t.integer :sh_phone_2, :limit=>20
      t.integer :sh_mobile, :limit=>20
      t.string :sh_email_1, :limit=>40
      t.string :sh_email_2, :limit=>40
      t.string :sh_fax_no, :limit=>25
      t.string :sh_branded_flg,:limit=>1
      t.string :sh_touch_ph_sale,:limit=>1
      t.string :sh_reg_no, :limit=>20
      t.date :sh_establish_yr
      t.text :sh_remarks
      t.decimal :sh_long, :precision =>12, :scale =>6 
      t.decimal :sh_lat, :precision =>12, :scale =>6 
      t.string :sh_create_from, :limit=>30
      t.date :sh_create_date
      t.string :sh_create_by, :limit=>30
      t.date :sh_modify_date
      t.string :sh_modify_by, :limit=>30
      t.date :sh_del_date
      t.string :sh_del_by, :limit=>30
      t.string :sh_del_flg,:limit=>1
    end
     change_column_default(:shops, :sh_shop_cd, nil)
     change_column(:shops, :sh_shop_cd, :string, :limit => 4, :unique => true)
     add_index(:shops, :sh_shop_id, :unique => true, :name => 'sh_shop_id_idx')
     add_index(:shops, :sh_shop_cd, :unique => true, :name => 'sh_shop_cd_idx')
     
  end
end
