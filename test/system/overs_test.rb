require "application_system_test_case"

class OversTest < ApplicationSystemTestCase
  setup do
    @over = overs(:one)
  end

  test "visiting the index" do
    visit overs_url
    assert_selector "h1", text: "Overs"
  end

  test "creating a Over" do
    visit overs_url
    click_on "New Over"

    fill_in "Bowler", with: @over.bowler
    fill_in "Byes", with: @over.byes
    fill_in "Inning", with: @over.inning_id
    fill_in "Leg byes", with: @over.leg_byes
    fill_in "No balls", with: @over.no_balls
    fill_in "Over no", with: @over.over_no
    fill_in "Runs", with: @over.runs
    fill_in "Wickets", with: @over.wickets
    fill_in "Wides", with: @over.wides
    click_on "Create Over"

    assert_text "Over was successfully created"
    click_on "Back"
  end

  test "updating a Over" do
    visit overs_url
    click_on "Edit", match: :first

    fill_in "Bowler", with: @over.bowler
    fill_in "Byes", with: @over.byes
    fill_in "Inning", with: @over.inning_id
    fill_in "Leg byes", with: @over.leg_byes
    fill_in "No balls", with: @over.no_balls
    fill_in "Over no", with: @over.over_no
    fill_in "Runs", with: @over.runs
    fill_in "Wickets", with: @over.wickets
    fill_in "Wides", with: @over.wides
    click_on "Update Over"

    assert_text "Over was successfully updated"
    click_on "Back"
  end

  test "destroying a Over" do
    visit overs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Over was successfully destroyed"
  end
end
