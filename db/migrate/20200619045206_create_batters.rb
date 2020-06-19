class CreateBatters < ActiveRecord::Migration[6.0]
  def change
    create_table :batters do |t|
      t.string :name
      t.string :history
      t.integer :balls_faced
      t.integer :zero
      t.integer :one
      t.integer :two
      t.integer :three
      t.integer :four
      t.integer :five
      t.integer :six
      t.string :how_out
      t.string :bowler
      t.string :fielder
      t.integer :runs
      t.references :battingdetail, null: false, foreign_key: true

      t.timestamps
    end
  end
end
