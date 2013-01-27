class AddCandidateIdToResume < ActiveRecord::Migration
  def change
    add_column :resumes, :candidate_id, :integer
  end
end
