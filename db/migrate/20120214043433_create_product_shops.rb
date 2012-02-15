class CreateProductShops < ActiveRecord::Migration
  def change
    create_table :product_shops, :id=>false do |t|
      t.primary_key :ps_id
      t.string "ps_pr_cd", :limit=>9, :null => false
      t.string "ps_shop_cd", :limit=>9, :null => false
      t.string "ps_pr_manufactr_cd", :limit=>6, :null => false#Manufacture code
      t.string "ps_pr_model_specs", :limit=>90, :null => false#Model No
      t.string "ps_pr_group_cd", :limit=>3, :null => false#Tablet,Smartphone....
      t.string  :ps_pr_product_stat_flg, :limit =>1, :null => false#Used,New
      t.integer :ps_sh_panchayat_id, :null => false,:limit=>16#Panchayat id
      t.integer :ps_sh_place_id,:limit=>16, :null => false#Place id
      t.integer :ps_sh_dist_id, :null => false,:limit=>16#District id
      t.string "ps_create_from", :limit=>30
      t.date :ps_create_date
      t.string "ps_create_by", :limit=>30
      t.date :ps_modify_date
      t.string "ps_modify_by", :limit=>30
      t.string "ps_del_by", :limit=>30
      t.date :ps_del_date
      t.string :ps_del_flg, :limit=>1
     
    end
      change_column_default(:product_shops,:ps_id, nil)
      change_column(:product_shops,:ps_id, :integer, :limit => 4, :unique => true)
      add_index(:product_shops,:ps_pr_cd,  :name => 'ps_pr_cd_idx')
      add_index(:product_shops,:ps_shop_cd,  :name => 'ps_shop_cd_idx')
  end
end
