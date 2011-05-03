class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.text :first_name
      t.text :last_name
      t.date :date_of_birth
      t.text :address
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
