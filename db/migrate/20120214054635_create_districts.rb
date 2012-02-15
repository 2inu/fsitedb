class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts, :id=>false do |t|
      t.primary_key :di_dist_id
      t.string :di_dist_cd, :limit=>9,:unique => true, :null => false
      t.string :di_name, :limit=>30
      t.integer :di_countr, :limit=>12
      t.string :di_create_from, :limit=>30
      t.date :di_create_date
      t.string :di_create_by, :limit=>30
    end
     change_column_default(:districts, :di_dist_id, nil)
     change_column(:districts, :di_dist_id, :integer, :limit => 4, :unique => true)
     add_index(:districts, :di_dist_id, :unique => true, :name => 'di_dist_id_idx')
  end
end
