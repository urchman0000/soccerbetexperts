class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :team_1
      t.text :team_1_news
      t.integer :team_2
      t.text :team_2_news
      t.text :match_details
      t.string :featured_photo
      t.string :game_prediciton
      t.text :reason_for_bet_tip
      t.text :head_to_head
      t.string :stat

      t.timestamps null: false
    end
  end
end
