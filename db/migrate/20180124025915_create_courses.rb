class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :course_id
      t.string :course_name
      t.string :department
    end

    add_index :courses, :course_id, unique: true
  end
end
