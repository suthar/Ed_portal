class Courses < ActiveRecord::Migration
def self.up
    create_table :courses do |t|
   	t.column :cname, :string, :limit => 32, :null => false
    	t.column :description, :text
        t.column :created_at, :timestamp
     end

  end

  def self.down
    drop_table :courses
  end

end
