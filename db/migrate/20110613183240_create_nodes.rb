class CreateNodes < ActiveRecord::Migration
  def self.up
    create_table :nodes do |t|
      t.string :name
      t.string :symbol
      t.date :visited
      t.float :lat
      t.float :lon
      t.references :post

      t.timestamps
    end
  end

  def self.down
    drop_table :nodes
  end
end
