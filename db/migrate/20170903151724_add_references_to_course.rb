class AddReferencesToCourse < ActiveRecord::Migration[5.1]
  def change
    add_reference :courses, :user, foreign_key: true
    add_reference :courses, :appointment, foreign_key: true
  end
end
