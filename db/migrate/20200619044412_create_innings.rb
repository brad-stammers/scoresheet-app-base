class CreateInnings < ActiveRecord::Migration[6.0]
  def change
    create_table :innings do |t|
      t.string :home
      t.string :away
      t.string :ground
      t.string :start_date
      t.string :end_date
      t.string :compeition
      t.string :round
      t.string :umpire_1
      t.string :umpire_2
      t.string :batting_team
      t.string :bowling_team
      t.integer :inning_no

      t.timestamps
    end
  end
end
