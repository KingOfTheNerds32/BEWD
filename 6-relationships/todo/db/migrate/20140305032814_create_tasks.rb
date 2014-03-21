class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.integer :list_id
      t.integer :category_id
      t.boolean :done

      t.timestamps
    end
  end
end
