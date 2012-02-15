class CreateSoleContacts < ActiveRecord::Migration
  def change
    create_table :sole_contacts, :id=>false  do |t|
      t.integer :so_sole_id, :limit=>16,:unique => true, :null => false
      t.primary_key :so_sole_cd
      t.integer :so_shop_id, :limit=>16,:null => false
      t.string :so_type, :limit=>12
      t.string :so_first_name, :limit=>45
      t.string :so_nick_name, :limit=>45
      t.string :so_name_in_id, :limit=>45
      t.string :so_name_in_bank_ac, :limit=>45
      t.string :so_father_name, :limit=>45
      t.string :so_family_name, :limit=>45
      t.integer :so_mobile, :limit=>16
      t.string :so_email_id, :limit=>40
      t.integer :so_photo_id, :limit=>12,:unique => true
      t.string :so_photo_name, :limit=>80
      t.string :so_pro_flg, :limit=>1
      t.string :so_bank_name_cd, :limit=>6
      t.string :so_id_type, :limit=>30
      t.string :so_create_from, :limit=>30
      t.date :so_create_date
      t.string :so_create_by, :limit=>30
      t.date :so_modify_date
      t.string :so_modify_by, :limit=>30
      t.date :so_del_date
      t.string :so_del_by, :limit=>30
      t.string :so_del_flg, :limit=>1
    end
     change_column_default(:sole_contacts, :so_sole_cd, nil)
      change_column(:sole_contacts, :so_sole_cd, :string, :limit => 9, :unique => true)
      add_index(:sole_contacts, :so_sole_id,  :name => 'so_sole_id_idx')
      add_index(:sole_contacts, :so_sole_cd,  :name => 'so_sole_cd_idx')
  end
end
