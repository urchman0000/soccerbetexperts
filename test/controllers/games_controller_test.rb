require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  setup do
    @game = games(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:games)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game" do
    assert_difference('Game.count') do
      post :create, game: { featured_photo: @game.featured_photo, game_prediciton: @game.game_prediciton, head_to_head: @game.head_to_head, match_details: @game.match_details, reason_for_bet_tip: @game.reason_for_bet_tip, stat: @game.stat, team_1: @game.team_1, team_1_news: @game.team_1_news, team_2: @game.team_2, team_2_news: @game.team_2_news }
    end

    assert_redirected_to game_path(assigns(:game))
  end

  test "should show game" do
    get :show, id: @game
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game
    assert_response :success
  end

  test "should update game" do
    patch :update, id: @game, game: { featured_photo: @game.featured_photo, game_prediciton: @game.game_prediciton, head_to_head: @game.head_to_head, match_details: @game.match_details, reason_for_bet_tip: @game.reason_for_bet_tip, stat: @game.stat, team_1: @game.team_1, team_1_news: @game.team_1_news, team_2: @game.team_2, team_2_news: @game.team_2_news }
    assert_redirected_to game_path(assigns(:game))
  end

  test "should destroy game" do
    assert_difference('Game.count', -1) do
      delete :destroy, id: @game
    end

    assert_redirected_to games_path
  end
end
