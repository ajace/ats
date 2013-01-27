class RemoveResumeFromCandidates < ActiveRecord::Migration
  def up
    remove_column :candidates, :resume
  end

  def down
    add_column :candidates, :resume, :string
  end
end
