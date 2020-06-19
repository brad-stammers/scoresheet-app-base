require 'test_helper'

class BowlersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bowler = bowlers(:one)
  end

  test "should get index" do
    get bowlers_url
    assert_response :success
  end

  test "should get new" do
    get new_bowler_url
    assert_response :success
  end

  test "should create bowler" do
    assert_difference('Bowler.count') do
      post bowlers_url, params: { bowler: { bowlingdetail_id: @bowler.bowlingdetail_id, maidens: @bowler.maidens, name: @bowler.name, no_balls: @bowler.no_balls, overs: @bowler.overs, runs: @bowler.runs, wickets: @bowler.wickets, wides: @bowler.wides } }
    end

    assert_redirected_to bowler_url(Bowler.last)
  end

  test "should show bowler" do
    get bowler_url(@bowler)
    assert_response :success
  end

  test "should get edit" do
    get edit_bowler_url(@bowler)
    assert_response :success
  end

  test "should update bowler" do
    patch bowler_url(@bowler), params: { bowler: { bowlingdetail_id: @bowler.bowlingdetail_id, maidens: @bowler.maidens, name: @bowler.name, no_balls: @bowler.no_balls, overs: @bowler.overs, runs: @bowler.runs, wickets: @bowler.wickets, wides: @bowler.wides } }
    assert_redirected_to bowler_url(@bowler)
  end

  test "should destroy bowler" do
    assert_difference('Bowler.count', -1) do
      delete bowler_url(@bowler)
    end

    assert_redirected_to bowlers_url
  end
end
