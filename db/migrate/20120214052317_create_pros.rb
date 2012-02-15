class CreatePros < ActiveRecord::Migration
  def change
    create_table :pros, :id=>false do |t|
      t.primary_key :pr_pro_id
      t.string :pr_pro_cd, :limit=>9,:unique => true, :null => false
      t.integer :pr_sole_id, :limit=>16, :null => false
      t.integer :pr_shop_id, :limit=>16, :null => false
      t.references:shop
      t.string :pr_type, :limit=>18
      t.string :pr_nick_name, :limit=>45
      t.string :pr_name_in_id, :limit=>45
      t.string :pr_first_name, :limit=>45
      t.string :pr_father_name, :limit=>45
      t.string :pr_family_name, :limit=>45
      t.integer :pr_mobile, :limit=>16
      t.string :pr_email_id, :limit=>40
      t.string :pr_id_type, :limit=>30
      t.integer :pr_photo_id, :limit=>12,:unique => true
      t.string :pr_photo_name, :limit=>80
      t.string :pr_create_from, :limit=>30
      t.date :pr_create_date
      t.string :pr_create_by, :limit=>30
      t.date :pr_modify_date
      t.string :pr_modify_by, :limit=>30
      t.string :pr_del_by, :limit=>30
      t.date :pr_del_date
      t.string :pr_del_flg, :limit=>1
    end
      change_column_default(:pros, :pr_pro_id, nil)
      change_column(:pros, :pr_pro_id, :integer, :limit => 4, :unique => true)
      add_index(:pros, :pr_pro_id,  :name => ' pr_pro_id_idx')
      add_index(:pros, :pr_pro_cd,  :name => ' pr_pro_cd_idx')
  end
end
