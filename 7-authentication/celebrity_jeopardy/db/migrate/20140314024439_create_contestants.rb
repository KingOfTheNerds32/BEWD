class CreateContestants < ActiveRecord::Migration
  def change
    create_table :contestants do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :score

      t.timestamps
    end
  end
end
