class CreatePanchayats < ActiveRecord::Migration
  def change
    create_table :panchayats, :id=>false do |t|
      t.primary_key :pa_panchayat_id
      t.string :pa_panchayat_cd, :limit=>9,:unique => true, :null => false
      t.string :pa_name, :limit=>30
      t.integer :pa_dist_id, :limit=>16
      t.string :pa_panchayat_type, :limit=>16
      t.string :pa_create_from, :limit=>30
      t.date :pa_create_date
      t.string :pa_create_by, :limit=>30
    end
      change_column_default( :panchayats, :pa_panchayat_id, nil)
      change_column(:panchayats, :pa_panchayat_id, :integer, :limit => 4, :unique => true)
      add_index(:panchayats, :pa_panchayat_id, :unique => true, :name => 'pa_panchayat_id_idx')
      add_index(:panchayats, :pa_panchayat_cd, :unique => true, :name => 'pa_panchayat_cd_idx')
  end
end
