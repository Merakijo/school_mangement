# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_09_07_143820) do

  create_table "blood_groups", force: :cascade do |t|
    t.string "group"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.integer "hod_id"
  end

  create_table "departments_teachers", id: false, force: :cascade do |t|
    t.integer "department_id", null: false
    t.integer "teacher_id", null: false
  end

  create_table "exam_categories", force: :cascade do |t|
    t.string "category"
    t.float "weightage"
    t.integer "maximum_marks"
    t.integer "minimum_marks"
  end

  create_table "results", force: :cascade do |t|
    t.integer "exam_category_id"
    t.integer "student_id"
    t.integer "subject_id"
    t.integer "marks"
  end

  create_table "sections", force: :cascade do |t|
    t.string "section"
  end

  create_table "sections_students", id: false, force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "section_id", null: false
  end

  create_table "standards", force: :cascade do |t|
    t.string "name"
  end

  create_table "standards_students", id: false, force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "standard_id", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "dob"
    t.string "address"
    t.integer "fee_status", default: 0
    t.integer "mobile_no"
    t.boolean "status", default: true
    t.string "password_digest"
    t.integer "blood_group_id"
    t.index ["mobile_no"], name: "index_students_on_mobile_no", unique: true
  end

  create_table "students_subjects", id: false, force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "subject_id", null: false
  end

  create_table "students_teachers", id: false, force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "teacher_id", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.string "department"
  end

  create_table "subjects_teachers", id: false, force: :cascade do |t|
    t.integer "teacher_id", null: false
    t.integer "subject_id", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "department"
    t.integer "mobile_no"
    t.string "password_digest"
  end

  create_table "years", force: :cascade do |t|
    t.integer "year"
  end

end
