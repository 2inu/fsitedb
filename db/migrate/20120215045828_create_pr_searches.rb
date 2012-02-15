class CreatePrSearches < ActiveRecord::Migration
  def self.up
    create_table :pr_searches do |t|
      t.string :manufacturer
      t.string :group
      t.string :category
      t.string :model
      t.string :os1
      t.string :os2
      t.string :os3
      t.integer :district
      t.integer :panchayat
      t.integer :place
      t.timestamps
    end
  end

  def self.down
    drop_table :pr_searches
  end
end
