require "application_system_test_case"

class BowlingdetailsTest < ApplicationSystemTestCase
  setup do
    @bowlingdetail = bowlingdetails(:one)
  end

  test "visiting the index" do
    visit bowlingdetails_url
    assert_selector "h1", text: "Bowlingdetails"
  end

  test "creating a Bowlingdetail" do
    visit bowlingdetails_url
    click_on "New Bowlingdetail"

    fill_in "Bowling team", with: @bowlingdetail.bowling_team
    fill_in "Inning", with: @bowlingdetail.inning_id
    fill_in "No balls", with: @bowlingdetail.no_balls
    fill_in "Overs", with: @bowlingdetail.overs
    fill_in "Runs", with: @bowlingdetail.runs
    fill_in "Wickets", with: @bowlingdetail.wickets
    fill_in "Wides", with: @bowlingdetail.wides
    click_on "Create Bowlingdetail"

    assert_text "Bowlingdetail was successfully created"
    click_on "Back"
  end

  test "updating a Bowlingdetail" do
    visit bowlingdetails_url
    click_on "Edit", match: :first

    fill_in "Bowling team", with: @bowlingdetail.bowling_team
    fill_in "Inning", with: @bowlingdetail.inning_id
    fill_in "No balls", with: @bowlingdetail.no_balls
    fill_in "Overs", with: @bowlingdetail.overs
    fill_in "Runs", with: @bowlingdetail.runs
    fill_in "Wickets", with: @bowlingdetail.wickets
    fill_in "Wides", with: @bowlingdetail.wides
    click_on "Update Bowlingdetail"

    assert_text "Bowlingdetail was successfully updated"
    click_on "Back"
  end

  test "destroying a Bowlingdetail" do
    visit bowlingdetails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bowlingdetail was successfully destroyed"
  end
end
