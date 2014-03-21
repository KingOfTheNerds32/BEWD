class AddCategoryColumn < ActiveRecord::Migration
  def change
  	add_column :Question, :category, :string
  end
end
