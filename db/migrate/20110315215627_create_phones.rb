class CreatePhones < ActiveRecord::Migration
  def self.up
    create_table :phones do |t|
      t.string :phone
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :phones
  end
end
