class CreateProducts < ActiveRecord::Migration
  def change
     create_table :products, :id=>false do |t|
      t.primary_key :pr_id
      t.string "pr_cd", :limit=>9,:unique => true, :null => false
      t.integer :pr_number, :limit=>18
      t.string "pr_brand_cd", :limit=>12, :null => false
      t.string "pr_brand_name", :limit=>80
      t.string "pr_os", :limit=>30
      t.integer :pr_os_version, :limit =>9
      t.date :pr_os_ver_date
      t.string "pr_os_ver_name", :limit=>30
      t.string "pr_model_specs", :limit=>90, :null => false
      t.string :pr_base_model_flg, :limit=>1
      t.string "pr_manufactr_cd", :limit=>6, :null => false
      t.decimal :pr_height
      t.string "pr_height_type", :limit=>16
      t.decimal :pr_width
      t.string "pr_width_type", :limit=>16
      t.decimal :pr_thick
      t.string "pr_thick_type", :limit=>16
      t.decimal :pr_weight
      t.string "pr_weight_type", :limit=>16
      t.decimal :pr_ram
      t.string "pr_ram_type", :limit=>30
      t.string "pr_cpu_model", :limit=>50
      t.boolean :pr_camera_flg
      t.text :pr_camera_desc
      t.string "pr_battery_pow", :limit=>120
      t.boolean :pr_gps_flg
      t.string "pr_wifi_type", :limit=>20
      t.boolean :pr_bluetooth_flg
      t.string "pr_short_desc", :limit=>120
      t.text :pr_long_desc
      t.string "pr_group_cd", :limit=>3, :null => false
      t.string "pr_applicability_cd", :limit=>3
      t.integer :pr_distributor_cd
      t.string :pr_product_stat_flg, :null => false,:limit =>1
      t.string :pr_record_stat_flg,:limit =>1 #Delete,Active,Pending
      t.string :pr_del_flg,:limit =>1 
      t.string :pr_create_from,:limit =>30
      t.date :pr_effect_date
      t.date :pr_create_date
      t.date :pr_modify_date
      t.date :pr_del_date
      t.string "pr_create_by", :limit=>30
      t.string "pr_modify_by", :limit=>30
      t.string "pr_del_by", :limit=>30
    end
  end
end
