class AddJobIdToCandidates < ActiveRecord::Migration
  def change
    add_column :candidates, :job_id, :integer
  end
end
