class CreateSmokeTests < ActiveRecord::Migration
  def self.up
    create_table :smoke_tests do |t|
      t.string :branch_url
      t.string :description
      t.string :revision
      t.boolean :merge_trunk, :default => true

      t.timestamps
    end
  end

  def self.down
    drop_table :smoke_tests
  end
end
