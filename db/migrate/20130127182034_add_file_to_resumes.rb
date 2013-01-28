class AddFileToResumes < ActiveRecord::Migration
  def change
    add_column :resumes, :file, :string
  end
end
