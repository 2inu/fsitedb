class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places, :id=>false do |t|
      t.primary_key :pl_place_id
      t.string :pl_place_cd, :limit=>9,:unique => true, :null => false
      t.string :pl_name, :limit=>30
      t.integer :pl_panchayat_id, :limit=>16
      t.integer :pl_dist_id, :limit=>16
      t.string :pl_create_from, :limit=>30
      t.date :pl_create_date
      t.string :pl_create_by, :limit=>30
    end
      change_column_default(:places, :pl_place_id , nil)
      change_column(:places, :pl_place_id, :integer, :limit => 4, :unique => true)
      add_index(:places, :pl_place_id, :unique => true, :name => 'pl_place_id_idx')
      add_index(:places, :pl_place_cd, :unique => true, :name => 'pl_place_cd_idx')
      
  end
end
