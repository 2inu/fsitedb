class CreateSoleBanks < ActiveRecord::Migration
  def change
    create_table :sole_banks, :id=>false do |t|
      t.primary_key :ba_bank_cd
      t.string :ba_bank_name, :limit=>45
      t.string :ba_create_from, :limit=>30
      t.date :ba_create_date
      t.string :ba_create_by, :limit=>30
    end
      change_column_default(:sole_banks, :ba_bank_cd, nil)
      change_column(:sole_banks, :ba_bank_cd, :string, :limit => 6, :unique => true)
      add_index(:sole_banks, :ba_bank_cd, :name => 'ba_bank_cd_idx')
  end
end
