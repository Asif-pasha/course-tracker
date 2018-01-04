class RenameInstructorIdToUserIdInPublication < ActiveRecord::Migration
  def change
  	rename_column :publications, :instructor_id, :user_id
  end
end
