class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :player_id
      t.string :answer_seen
      t.boolean :correct

      t.timestamps
    end
  end
end
