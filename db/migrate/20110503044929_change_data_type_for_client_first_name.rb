class ChangeDataTypeForClientFirstName < ActiveRecord::Migration
  def self.up
    change_table :clients do |t|
      t.change :first_name, :string
      t.change :last_name, :string
    end
  end

  def self.down
    change_table :clients do |t|
      t.change :first_name, :text
      t.change :last_name, :text
    end
  end
end
