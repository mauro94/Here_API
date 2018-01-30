class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :location
      t.integer :group_id
      t.integer :capacity
      t.integer :signed_up_students

      t.belongs_to :course, index: true
      t.belongs_to :schoolYear, index: true
      t.belongs_to :teacher, index: true
    end

    add_index :groups, :group_id, unique: true
  end
end
