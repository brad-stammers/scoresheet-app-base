require "application_system_test_case"

class BattingdetailsTest < ApplicationSystemTestCase
  setup do
    @battingdetail = battingdetails(:one)
  end

  test "visiting the index" do
    visit battingdetails_url
    assert_selector "h1", text: "Battingdetails"
  end

  test "creating a Battingdetail" do
    visit battingdetails_url
    click_on "New Battingdetail"

    fill_in "Batting team", with: @battingdetail.batting_team
    fill_in "Byes", with: @battingdetail.byes
    fill_in "Inning", with: @battingdetail.inning_id
    fill_in "Leg byes", with: @battingdetail.leg_byes
    fill_in "Overs", with: @battingdetail.overs
    fill_in "Runs", with: @battingdetail.runs
    fill_in "Wickets", with: @battingdetail.wickets
    click_on "Create Battingdetail"

    assert_text "Battingdetail was successfully created"
    click_on "Back"
  end

  test "updating a Battingdetail" do
    visit battingdetails_url
    click_on "Edit", match: :first

    fill_in "Batting team", with: @battingdetail.batting_team
    fill_in "Byes", with: @battingdetail.byes
    fill_in "Inning", with: @battingdetail.inning_id
    fill_in "Leg byes", with: @battingdetail.leg_byes
    fill_in "Overs", with: @battingdetail.overs
    fill_in "Runs", with: @battingdetail.runs
    fill_in "Wickets", with: @battingdetail.wickets
    click_on "Update Battingdetail"

    assert_text "Battingdetail was successfully updated"
    click_on "Back"
  end

  test "destroying a Battingdetail" do
    visit battingdetails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Battingdetail was successfully destroyed"
  end
end
