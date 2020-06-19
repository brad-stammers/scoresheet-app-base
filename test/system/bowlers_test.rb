require "application_system_test_case"

class BowlersTest < ApplicationSystemTestCase
  setup do
    @bowler = bowlers(:one)
  end

  test "visiting the index" do
    visit bowlers_url
    assert_selector "h1", text: "Bowlers"
  end

  test "creating a Bowler" do
    visit bowlers_url
    click_on "New Bowler"

    fill_in "Bowlingdetail", with: @bowler.bowlingdetail_id
    fill_in "Maidens", with: @bowler.maidens
    fill_in "Name", with: @bowler.name
    fill_in "No balls", with: @bowler.no_balls
    fill_in "Overs", with: @bowler.overs
    fill_in "Runs", with: @bowler.runs
    fill_in "Wickets", with: @bowler.wickets
    fill_in "Wides", with: @bowler.wides
    click_on "Create Bowler"

    assert_text "Bowler was successfully created"
    click_on "Back"
  end

  test "updating a Bowler" do
    visit bowlers_url
    click_on "Edit", match: :first

    fill_in "Bowlingdetail", with: @bowler.bowlingdetail_id
    fill_in "Maidens", with: @bowler.maidens
    fill_in "Name", with: @bowler.name
    fill_in "No balls", with: @bowler.no_balls
    fill_in "Overs", with: @bowler.overs
    fill_in "Runs", with: @bowler.runs
    fill_in "Wickets", with: @bowler.wickets
    fill_in "Wides", with: @bowler.wides
    click_on "Update Bowler"

    assert_text "Bowler was successfully updated"
    click_on "Back"
  end

  test "destroying a Bowler" do
    visit bowlers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bowler was successfully destroyed"
  end
end
