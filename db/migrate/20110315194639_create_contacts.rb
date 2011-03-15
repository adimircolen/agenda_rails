class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :nick_name
      t.date :birth_date

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
