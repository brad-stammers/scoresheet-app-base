require 'test_helper'

class BattingdetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @battingdetail = battingdetails(:one)
  end

  test "should get index" do
    get battingdetails_url
    assert_response :success
  end

  test "should get new" do
    get new_battingdetail_url
    assert_response :success
  end

  test "should create battingdetail" do
    assert_difference('Battingdetail.count') do
      post battingdetails_url, params: { battingdetail: { batting_team: @battingdetail.batting_team, byes: @battingdetail.byes, inning_id: @battingdetail.inning_id, leg_byes: @battingdetail.leg_byes, overs: @battingdetail.overs, runs: @battingdetail.runs, wickets: @battingdetail.wickets } }
    end

    assert_redirected_to battingdetail_url(Battingdetail.last)
  end

  test "should show battingdetail" do
    get battingdetail_url(@battingdetail)
    assert_response :success
  end

  test "should get edit" do
    get edit_battingdetail_url(@battingdetail)
    assert_response :success
  end

  test "should update battingdetail" do
    patch battingdetail_url(@battingdetail), params: { battingdetail: { batting_team: @battingdetail.batting_team, byes: @battingdetail.byes, inning_id: @battingdetail.inning_id, leg_byes: @battingdetail.leg_byes, overs: @battingdetail.overs, runs: @battingdetail.runs, wickets: @battingdetail.wickets } }
    assert_redirected_to battingdetail_url(@battingdetail)
  end

  test "should destroy battingdetail" do
    assert_difference('Battingdetail.count', -1) do
      delete battingdetail_url(@battingdetail)
    end

    assert_redirected_to battingdetails_url
  end
end
