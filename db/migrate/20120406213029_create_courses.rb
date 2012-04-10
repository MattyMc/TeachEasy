class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :start_date
      t.string :end_date
      t.string :current_week

      t.timestamps
    end
  end
end
