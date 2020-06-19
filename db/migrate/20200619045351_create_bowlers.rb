class CreateBowlers < ActiveRecord::Migration[6.0]
  def change
    create_table :bowlers do |t|
      t.string :name
      t.string :overs
      t.integer :wickets
      t.integer :maidens
      t.integer :runs
      t.integer :wides
      t.integer :no_balls
      t.references :bowlingdetail, null: false, foreign_key: true

      t.timestamps
    end
  end
end
