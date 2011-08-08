class Assignments < ActiveRecord::Migration
  def self.up
    create_table :assignments do |t|
        t.column :name, :string, :limit => 32, :null => false
        t.column :guideline, :text, :limit => 200 
        t.column :dateOfSubmission, :date, :null =>false
        t.column :maxMarks, :integer, :null =>false
        t.column :course_id, :integer, :null =>false
        t.column :teacher_id, :integer, :null =>false
        t.column :fileName, :string
	t.column :fileType, :string
	t.column :filePath, :string
        t.column :created_at, :timestamp
     end

  end

  def self.down
    drop_table :assignments
  end
end
