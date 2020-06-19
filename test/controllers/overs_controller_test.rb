require 'test_helper'

class OversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @over = overs(:one)
  end

  test "should get index" do
    get overs_url
    assert_response :success
  end

  test "should get new" do
    get new_over_url
    assert_response :success
  end

  test "should create over" do
    assert_difference('Over.count') do
      post overs_url, params: { over: { bowler: @over.bowler, byes: @over.byes, inning_id: @over.inning_id, leg_byes: @over.leg_byes, no_balls: @over.no_balls, over_no: @over.over_no, runs: @over.runs, wickets: @over.wickets, wides: @over.wides } }
    end

    assert_redirected_to over_url(Over.last)
  end

  test "should show over" do
    get over_url(@over)
    assert_response :success
  end

  test "should get edit" do
    get edit_over_url(@over)
    assert_response :success
  end

  test "should update over" do
    patch over_url(@over), params: { over: { bowler: @over.bowler, byes: @over.byes, inning_id: @over.inning_id, leg_byes: @over.leg_byes, no_balls: @over.no_balls, over_no: @over.over_no, runs: @over.runs, wickets: @over.wickets, wides: @over.wides } }
    assert_redirected_to over_url(@over)
  end

  test "should destroy over" do
    assert_difference('Over.count', -1) do
      delete over_url(@over)
    end

    assert_redirected_to overs_url
  end
end
