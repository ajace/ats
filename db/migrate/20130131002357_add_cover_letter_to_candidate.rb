class AddCoverLetterToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :cover_letter, :text
  end
end
