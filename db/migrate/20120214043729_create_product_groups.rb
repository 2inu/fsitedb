class CreateProductGroups < ActiveRecord::Migration
  def change
      create_table :product_groups, :id=>false do |t|
      t.primary_key :pg_group_cd
      t.string "pg_group_name", :limit=>60
      t.string :pg_create_from, :limit=>30
      t.date :pg_create_date
      t.string "pg_create_by", :limit=>30
      t.date :pg_modify_date
      t.string "pg_modify_by", :limit=>30
      t.string "pg_del_by", :limit=>30
      t.date :pg_del_date
      t.string :pg_del_flg, :limit=>1
    end
      change_column_default(:product_groups, :pg_group_cd , nil)
      change_column(:product_groups, :pg_group_cd, :string, :limit =>3, :unique => true)
  end
end
