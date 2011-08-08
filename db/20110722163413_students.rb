class Students < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
          t.column :rollNo, :string, :limit => 32, :null => false
    	  t.column :name, :string, :limit => 32, :null => false
    	  t.column :dob, :date
          t.column :yoj, :integer
          t.column :major, :string
          t.column :department, :string
    	  t.column :phone, :integer
    	  t.column :email, :string
          t.column :created_at, :timestamp
     end

  end

  def self.down
    drop_table :students
  end

end
