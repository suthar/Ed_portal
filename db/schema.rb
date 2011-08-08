# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110722214059) do

  create_table "assignments", :force => true do |t|
    t.string   "name",             :limit => 32,  :null => false
    t.text     "guideline",        :limit => 255
    t.date     "DateOfSubmission",                :null => false
    t.integer  "MaxMarks",                        :null => false
    t.integer  "course_id",                       :null => false
    t.integer  "teacher_id",                      :null => false
    t.string   "fileName"
    t.string   "fileType"
    t.string   "filePath"
    t.datetime "created_at"
  end

  create_table "courses", :force => true do |t|
    t.string   "cname",       :limit => 32, :null => false
    t.text     "description"
    t.datetime "created_at"
  end

  create_table "materials", :force => true do |t|
    t.string   "name",        :limit => 32,  :null => false
    t.text     "description", :limit => 255
    t.integer  "course_id",                  :null => false
    t.integer  "teacher_id",                 :null => false
    t.string   "fileName"
    t.string   "fileType"
    t.string   "filePath"
    t.datetime "created_at"
  end

  create_table "students", :force => true do |t|
    t.string   "rollNo",     :limit => 32, :null => false
    t.string   "name",       :limit => 32, :null => false
    t.date     "dob"
    t.integer  "yoj"
    t.string   "major"
    t.string   "department"
    t.integer  "phone"
    t.string   "email"
    t.datetime "created_at"
  end

  create_table "teachers", :force => true do |t|
    t.string   "name",       :limit => 32, :null => false
    t.string   "uname",      :limit => 32, :null => false
    t.date     "dob"
    t.integer  "yoj"
    t.string   "department"
    t.integer  "phone"
    t.string   "email"
    t.datetime "created_at"
  end

  create_table "tests", :force => true do |t|
    t.string   "name",       :limit => 32,  :null => false
    t.text     "guideline",  :limit => 255
    t.integer  "MaxMarks",                  :null => false
    t.integer  "course_id",                 :null => false
    t.integer  "teacher_id",                :null => false
    t.string   "fileName"
    t.string   "fileType"
    t.string   "filePath"
    t.datetime "created_at"
  end

  create_table "users", :force => true do |t|
    t.string   "uName",      :limit => 32, :null => false
    t.string   "uPassword",  :limit => 32, :null => false
    t.string   "uRole",                    :null => false
    t.datetime "created_at"
  end

end
