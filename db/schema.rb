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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180129233216) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "attends", force: :cascade do |t|
    t.boolean "attended"
    t.datetime "date"
    t.integer "student_id"
    t.integer "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_attends_on_group_id"
    t.index ["student_id"], name: "index_attends_on_student_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "course_id"
    t.string "course_name"
    t.string "department"
    t.index ["course_id"], name: "index_courses_on_course_id", unique: true
  end

  create_table "groups", force: :cascade do |t|
    t.string "location"
    t.integer "group_id"
    t.integer "capacity"
    t.integer "signed_up_students"
    t.integer "course_id"
    t.integer "schoolYear_id"
    t.integer "teacher_id"
    t.index ["course_id"], name: "index_groups_on_course_id"
    t.index ["group_id"], name: "index_groups_on_group_id", unique: true
    t.index ["schoolYear_id"], name: "index_groups_on_schoolYear_id"
    t.index ["teacher_id"], name: "index_groups_on_teacher_id"
  end

  create_table "school_years", force: :cascade do |t|
    t.string "year_id"
    t.date "date_start"
    t.date "date_end"
    t.index ["year_id"], name: "index_school_years_on_year_id", unique: true
  end

  create_table "student_groups", force: :cascade do |t|
    t.integer "student_id"
    t.integer "group_id"
    t.index ["group_id"], name: "index_student_groups_on_group_id"
    t.index ["student_id"], name: "index_student_groups_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "student_id", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "email"
    t.string "device_id"
    t.string "degree"
    t.string "name"
    t.string "last_name"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true
    t.index ["student_id"], name: "index_students_on_student_id", unique: true
  end

  create_table "teachers", force: :cascade do |t|
    t.string "faculty_id", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "email"
    t.string "name"
    t.string "last_name"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["faculty_id"], name: "index_teachers_on_faculty_id", unique: true
    t.index ["reset_password_token"], name: "index_teachers_on_reset_password_token", unique: true
  end

end
