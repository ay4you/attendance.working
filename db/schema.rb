# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20170222160620) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",                                   null: false
    t.string   "resource_type",                                 null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at",    default: '2017-02-23 13:50:14'
    t.datetime "updated_at",    default: '2017-02-23 13:50:14'
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "",                    null: false
    t.string   "encrypted_password",     default: "",                    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,                     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",             default: '2017-02-23 13:50:14'
    t.datetime "updated_at",             default: '2017-02-23 13:50:14'
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "comments", force: :cascade do |t|
    t.string   "commentable_type"
    t.integer  "commentable_id"
    t.integer  "parent_id"
    t.text     "body"
    t.datetime "created_at",       default: '2017-02-23 13:50:15'
    t.datetime "updated_at",       default: '2017-02-23 13:50:15'
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0,                     null: false
    t.integer  "attempts",   default: 0,                     null: false
    t.text     "handler",                                    null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at", default: '2017-02-23 13:50:14'
    t.datetime "updated_at", default: '2017-02-23 13:50:14'
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "departments", force: :cascade do |t|
    t.string   "department_name"
    t.datetime "created_at",      default: '2017-02-23 13:50:15'
    t.datetime "updated_at",      default: '2017-02-23 13:50:15'
  end

  create_table "grades", force: :cascade do |t|
    t.string   "grade_name"
    t.integer  "teacher_id"
    t.integer  "department_id"
    t.datetime "created_at",    default: '2017-02-23 13:50:15'
    t.datetime "updated_at",    default: '2017-02-23 13:50:15'
  end

  add_index "grades", ["department_id"], name: "index_grades_on_department_id", using: :btree
  add_index "grades", ["teacher_id"], name: "index_grades_on_teacher_id", using: :btree

  create_table "parents", force: :cascade do |t|
    t.string   "fullname"
    t.string   "email"
    t.string   "title"
    t.string   "mobile_number"
    t.string   "image_path"
    t.datetime "created_at",    default: '2017-02-23 13:50:15'
    t.datetime "updated_at",    default: '2017-02-23 13:50:15'
  end

  create_table "reports", force: :cascade do |t|
    t.string   "name"
    t.integer  "semester"
    t.date     "class_year"
    t.integer  "subject_id"
    t.integer  "student_id"
    t.datetime "created_at", default: '2017-02-23 13:50:15'
    t.datetime "updated_at", default: '2017-02-23 13:50:15'
  end

  add_index "reports", ["student_id"], name: "index_reports_on_student_id", using: :btree
  add_index "reports", ["subject_id"], name: "index_reports_on_subject_id", using: :btree

  create_table "results", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "name"
    t.integer  "workload_id"
    t.integer  "report_id"
    t.datetime "created_at",  default: '2017-02-23 13:50:15'
    t.datetime "updated_at",  default: '2017-02-23 13:50:15'
  end

  add_index "results", ["report_id"], name: "index_results_on_report_id", using: :btree
  add_index "results", ["student_id"], name: "index_results_on_student_id", using: :btree
  add_index "results", ["workload_id"], name: "index_results_on_workload_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.integer  "grade_id"
    t.string   "student_first_name"
    t.string   "student_surname_name"
    t.string   "parent_name"
    t.string   "image_path"
    t.string   "parent_email"
    t.string   "student_email"
    t.string   "mobile_number"
    t.text     "full_address"
    t.boolean  "sick_or_holiday"
    t.text     "comments"
    t.datetime "created_at",           default: '2017-02-23 13:50:15'
    t.datetime "updated_at",           default: '2017-02-23 13:50:15'
  end

  add_index "students", ["grade_id"], name: "index_students_on_grade_id", using: :btree

  create_table "subjects", force: :cascade do |t|
    t.integer  "department_id"
    t.string   "subject_name"
    t.datetime "created_at",    default: '2017-02-23 13:50:15'
    t.datetime "updated_at",    default: '2017-02-23 13:50:15'
  end

  add_index "subjects", ["department_id"], name: "index_subjects_on_department_id", using: :btree

  create_table "subjects_teachers", force: :cascade do |t|
    t.integer "subject_id"
    t.integer "teacher_id"
  end

  add_index "subjects_teachers", ["subject_id"], name: "index_subjects_teachers_on_subject_id", using: :btree
  add_index "subjects_teachers", ["teacher_id"], name: "index_subjects_teachers_on_teacher_id", using: :btree

  create_table "teachers", force: :cascade do |t|
    t.string   "fullname"
    t.string   "email"
    t.string   "title"
    t.string   "mobile_number"
    t.string   "image_path"
    t.datetime "created_at",    default: '2017-02-23 13:50:15'
    t.datetime "updated_at",    default: '2017-02-23 13:50:15'
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",                    null: false
    t.string   "encrypted_password",     default: "",                    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,                     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",             default: '2017-02-23 13:50:14'
    t.datetime "updated_at",             default: '2017-02-23 13:50:14'
    t.string   "username"
    t.string   "fullname"
    t.integer  "role_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["role_id"], name: "index_users_on_role_id", using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  create_table "votes", force: :cascade do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at",   default: '2017-02-23 13:50:15'
    t.datetime "updated_at",   default: '2017-02-23 13:50:15'
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope", using: :btree
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope", using: :btree

  create_table "workloads", force: :cascade do |t|
    t.string   "name"
    t.text     "comments"
    t.string   "image_path"
    t.string   "score"
    t.integer  "subject_id"
    t.datetime "created_at", default: '2017-02-23 13:50:15'
    t.datetime "updated_at", default: '2017-02-23 13:50:15'
  end

  add_index "workloads", ["subject_id"], name: "index_workloads_on_subject_id", using: :btree

  add_foreign_key "users", "roles"
end
