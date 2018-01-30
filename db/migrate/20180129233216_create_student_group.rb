class CreateStudentGroup < ActiveRecord::Migration[5.1]
  def change
    create_table :student_groups do |t|
      t.belongs_to :student, index: true
      t.belongs_to :group, index: true
    end
  end
end
