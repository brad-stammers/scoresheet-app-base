require 'test_helper'

class BowlingdetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bowlingdetail = bowlingdetails(:one)
  end

  test "should get index" do
    get bowlingdetails_url
    assert_response :success
  end

  test "should get new" do
    get new_bowlingdetail_url
    assert_response :success
  end

  test "should create bowlingdetail" do
    assert_difference('Bowlingdetail.count') do
      post bowlingdetails_url, params: { bowlingdetail: { bowling_team: @bowlingdetail.bowling_team, inning_id: @bowlingdetail.inning_id, no_balls: @bowlingdetail.no_balls, overs: @bowlingdetail.overs, runs: @bowlingdetail.runs, wickets: @bowlingdetail.wickets, wides: @bowlingdetail.wides } }
    end

    assert_redirected_to bowlingdetail_url(Bowlingdetail.last)
  end

  test "should show bowlingdetail" do
    get bowlingdetail_url(@bowlingdetail)
    assert_response :success
  end

  test "should get edit" do
    get edit_bowlingdetail_url(@bowlingdetail)
    assert_response :success
  end

  test "should update bowlingdetail" do
    patch bowlingdetail_url(@bowlingdetail), params: { bowlingdetail: { bowling_team: @bowlingdetail.bowling_team, inning_id: @bowlingdetail.inning_id, no_balls: @bowlingdetail.no_balls, overs: @bowlingdetail.overs, runs: @bowlingdetail.runs, wickets: @bowlingdetail.wickets, wides: @bowlingdetail.wides } }
    assert_redirected_to bowlingdetail_url(@bowlingdetail)
  end

  test "should destroy bowlingdetail" do
    assert_difference('Bowlingdetail.count', -1) do
      delete bowlingdetail_url(@bowlingdetail)
    end

    assert_redirected_to bowlingdetails_url
  end
end
