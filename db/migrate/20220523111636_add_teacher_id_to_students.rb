class AddTeacherIdToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :teachers_id, :int
  end
end
