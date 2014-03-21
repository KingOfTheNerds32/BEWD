class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string :username
      t.string :points

      t.timestamps
    end
  end
end
