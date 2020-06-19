require 'test_helper'

class InningsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inning = innings(:one)
  end

  test "should get index" do
    get innings_url
    assert_response :success
  end

  test "should get new" do
    get new_inning_url
    assert_response :success
  end

  test "should create inning" do
    assert_difference('Inning.count') do
      post innings_url, params: { inning: { away: @inning.away, batting_team: @inning.batting_team, bowling_team: @inning.bowling_team, compeition: @inning.compeition, end_date: @inning.end_date, ground: @inning.ground, home: @inning.home, inning_no: @inning.inning_no, round: @inning.round, start_date: @inning.start_date, umpire_1: @inning.umpire_1, umpire_2: @inning.umpire_2 } }
    end

    assert_redirected_to inning_url(Inning.last)
  end

  test "should show inning" do
    get inning_url(@inning)
    assert_response :success
  end

  test "should get edit" do
    get edit_inning_url(@inning)
    assert_response :success
  end

  test "should update inning" do
    patch inning_url(@inning), params: { inning: { away: @inning.away, batting_team: @inning.batting_team, bowling_team: @inning.bowling_team, compeition: @inning.compeition, end_date: @inning.end_date, ground: @inning.ground, home: @inning.home, inning_no: @inning.inning_no, round: @inning.round, start_date: @inning.start_date, umpire_1: @inning.umpire_1, umpire_2: @inning.umpire_2 } }
    assert_redirected_to inning_url(@inning)
  end

  test "should destroy inning" do
    assert_difference('Inning.count', -1) do
      delete inning_url(@inning)
    end

    assert_redirected_to innings_url
  end
end
