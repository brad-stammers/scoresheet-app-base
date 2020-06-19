class CreateBowlingdetails < ActiveRecord::Migration[6.0]
  def change
    create_table :bowlingdetails do |t|
      t.string :bowling_team
      t.string :overs
      t.integer :runs
      t.integer :wickets
      t.integer :wides
      t.integer :no_balls
      t.references :inning, null: false, foreign_key: true

      t.timestamps
    end
  end
end
