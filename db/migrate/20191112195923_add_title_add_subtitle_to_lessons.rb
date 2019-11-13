class AddTitleAddSubtitleToLessons < ActiveRecord::Migration[5.2]
  def change
  	add_column :lessons, :title, :text
  	add_column :lessons, :subtitle, :text

  	add_column :lessons, :section_id, :integer
  	add_index :lessons, :section_id
  end
end
