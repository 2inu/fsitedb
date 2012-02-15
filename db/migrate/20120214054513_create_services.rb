class CreateServices < ActiveRecord::Migration
  def change
    create_table :services, :id=>false  do |t|
      t.primary_key :se_service_id
      t.string :se_service_cd, :limit=>9
      t.integer :se_number, :limit=>12
      t.string :se_name, :limit=>40
      t.text :se_desc
      t.string :se_create_from, :limit=>30
      t.date :se_create_date
      t.string :se_create_by, :limit=>30
    end
      change_column_default(:services, :se_service_id, nil)
      change_column(:services, :se_service_id , :integer, :limit => 4, :unique => true)
      add_index(:services, :se_service_id, :unique => true, :name => 'se_service_id_idx')
  end
end
