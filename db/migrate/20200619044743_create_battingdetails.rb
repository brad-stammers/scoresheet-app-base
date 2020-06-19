class CreateBattingdetails < ActiveRecord::Migration[6.0]
  def change
    create_table :battingdetails do |t|
      t.string :batting_team
      t.string :overs
      t.integer :runs
      t.integer :wickets
      t.integer :byes
      t.integer :leg_byes
      t.references :inning, null: false, foreign_key: true

      t.timestamps
    end
  end
end
