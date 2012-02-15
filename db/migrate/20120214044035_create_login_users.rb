class CreateLoginUsers < ActiveRecord::Migration
  def change
    create_table :login_users, :id=>false do |t|
      t.primary_key :lo_id
      t.string :lo_name, :limit=>16,:unique => true, :null => false
      t.string :lo_pwd, :limit=>32, :null => false
      t.integer :lo_flg, :limit=>1
      t.string :lo_seq_quest, :limit=>32, :null => false
      t.string :lo_seq_ans, :limit=>32, :null => false
      t.integer :lo_pwd_rstflg, :limit=>1
      t.string :lo_account_type, :limit=>18
      t.string :lo_create_from, :limit=>30
      t.date :lo_create_date
      t.string :lo_create_by, :limit=>30

    end
      change_column_default(:login_users, :lo_id, nil)
      change_column(:login_users, :lo_id, :integer, :limit => 4, :unique => true)
      add_index(:login_users, :lo_id, :unique => true, :name => 'lo_id_idx')
  end
end
