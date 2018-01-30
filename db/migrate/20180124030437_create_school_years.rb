class CreateSchoolYears < ActiveRecord::Migration[5.1]
  def change
    create_table :school_years do |t|
      t.string :year_id
      t.date :date_start
      t.date :date_end
    end

    add_index :school_years, :year_id, unique: true
  end
end
