class AddReferencesToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :course, foreign_key: true
    add_reference :users, :appointment, foreign_key: true
  end
end
