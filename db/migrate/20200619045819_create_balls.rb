class CreateBalls < ActiveRecord::Migration[6.0]
  def change
    create_table :balls do |t|
      t.integer :ball_no
      t.string :striker
      t.string :non_striker
      t.integer :runs
      t.boolean :wide
      t.boolean :no_ball
      t.boolean :bye
      t.boolean :leg_bye
      t.boolean :wicket
      t.string :how_out
      t.string :fields
      t.string :batter_out
      t.references :over, null: false, foreign_key: true

      t.timestamps
    end
  end
end
