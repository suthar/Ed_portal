class Materials < ActiveRecord::Migration
 def self.up
    create_table :materials do |t|
        t.column :name, :string, :limit => 32, :null => false
        t.column :description, :text, :limit => 200 
        t.column :course_id, :integer, :null =>false
        t.column :teacher_id, :integer, :null =>false
        t.column :fileName, :string
	t.column :fileType, :string
	t.column :filePath, :string
        t.column :created_at, :timestamp
     end
  end

  def self.down
    drop_table :materials
  end
end
