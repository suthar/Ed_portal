class Teachers < ActiveRecord::Migration
def self.up
    create_table :teachers do |t|
    	t.column :name, :string, :limit => 32, :null => false
    	t.column :uname, :string, :limit => 32, :null => false
    	t.column :dob, :date
        t.column :yoj, :integer
        t.column :department, :string
    	t.column :phone, :integer
    	t.column :email, :string
        t.column :created_at, :timestamp
     end

  end

  def self.down
    drop_table :teachers
  end

end
