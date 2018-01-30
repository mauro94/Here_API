class CreateAttends < ActiveRecord::Migration[5.1]
  def change
    create_table :attends do |t|
      t.boolean :attended
      t.datetime :date

      t.belongs_to :student, index: true
      t.belongs_to :group, index: true

      t.timestamps
    end
  end
end
