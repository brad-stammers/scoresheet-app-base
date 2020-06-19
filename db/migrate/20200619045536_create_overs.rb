class CreateOvers < ActiveRecord::Migration[6.0]
  def change
    create_table :overs do |t|
      t.integer :over_no
      t.string :bowler
      t.integer :runs
      t.integer :wickets
      t.integer :wides
      t.integer :no_balls
      t.integer :byes
      t.integer :leg_byes
      t.references :inning, null: false, foreign_key: true

      t.timestamps
    end
  end
end
