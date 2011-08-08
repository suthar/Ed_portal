class Users < ActiveRecord::Migration
 def self.up
    create_table :users do |t|
    	t.column :uName, :string, :limit => 32, :null => false
    	t.column :uPassword, :string, :limit => 32, :null => false
    	t.column :uRole, :string, :null => false
        t.column :created_at, :timestamp
     end
  end

  def self.down
    drop_table :users
  end

end
