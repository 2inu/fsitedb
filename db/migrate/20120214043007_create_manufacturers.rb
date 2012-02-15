class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers, :id=>false do |t|
      t.integer :pd_manufactr_id, :null=>false, :unique => true
      t.primary_key :pd_manufactr_cd
      t.string "pd_manufactr_name", :limit=>30
      t.integer :pd_manufactr_ph1
      t.integer :pd_manufactr_ph2
      t.integer :pd_manufactr_mob1
      t.integer :pd_manufactr_mob2
      t.string "pd_manufactr_email_1", :limit=>40
      t.string "pd_manufactr_email_2", :limit=>40
      t.string "pd_manufactr_fax_no", :limit=>25
      t.string "pd_manufactr_add1", :limit=>30
      t.string "pd_manufactr_add2", :limit=>30
      t.string "pd_manufactr_add3", :limit=>30
      t.string "pd_manufactr_add4", :limit=>30
      t.string "pd_manufactr_place", :limit=>30
      t.string "pd_manufactr_city", :limit=>30
      t.string "pd_manufactr_country", :limit=>30
      t.string "pd_create_from", :limit=>30
      t.date :pd_effect_date
      t.date :pd_create_date
      t.date :pd_modify_date
      t.date :pd_del_date
      t.string "pd_create_by", :limit=>25
      t.string "pd_modify_by", :limit=>25
      t.string :pd_del_by, :limit=>25
      t.string :pd_del_flg, :limit =>1

    end
      change_column_default(:manufacturers, :pd_manufactr_cd, nil)
      change_column(:manufacturers, :pd_manufactr_cd, :string, :limit => 6, :unique => true)
      execute "CREATE SEQUENCE manufacturers_pd_manufactr_id_seq;"
      #execute 'ALTER TABLE manufactures DROP COLUMN pd_manufactr_id;'
      execute "ALTER TABLE manufacturers ALTER COLUMN pd_manufactr_id SET DEFAULT NEXTVAL('manufacturers_pd_manufactr_id_seq');"
      execute "ALTER SEQUENCE manufacturers_pd_manufactr_id_seq OWNED BY manufacturers.pd_manufactr_id;"
    
  end
end
