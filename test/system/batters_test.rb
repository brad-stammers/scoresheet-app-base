require "application_system_test_case"

class BattersTest < ApplicationSystemTestCase
  setup do
    @batter = batters(:one)
  end

  test "visiting the index" do
    visit batters_url
    assert_selector "h1", text: "Batters"
  end

  test "creating a Batter" do
    visit batters_url
    click_on "New Batter"

    fill_in "Balls faced", with: @batter.balls_faced
    fill_in "Battingdetail", with: @batter.battingdetail_id
    fill_in "Bowler", with: @batter.bowler
    fill_in "Fielder", with: @batter.fielder
    fill_in "Five", with: @batter.five
    fill_in "Four", with: @batter.four
    fill_in "History", with: @batter.history
    fill_in "How out", with: @batter.how_out
    fill_in "Name", with: @batter.name
    fill_in "One", with: @batter.one
    fill_in "Runs", with: @batter.runs
    fill_in "Six", with: @batter.six
    fill_in "Three", with: @batter.three
    fill_in "Two", with: @batter.two
    fill_in "Zero", with: @batter.zero
    click_on "Create Batter"

    assert_text "Batter was successfully created"
    click_on "Back"
  end

  test "updating a Batter" do
    visit batters_url
    click_on "Edit", match: :first

    fill_in "Balls faced", with: @batter.balls_faced
    fill_in "Battingdetail", with: @batter.battingdetail_id
    fill_in "Bowler", with: @batter.bowler
    fill_in "Fielder", with: @batter.fielder
    fill_in "Five", with: @batter.five
    fill_in "Four", with: @batter.four
    fill_in "History", with: @batter.history
    fill_in "How out", with: @batter.how_out
    fill_in "Name", with: @batter.name
    fill_in "One", with: @batter.one
    fill_in "Runs", with: @batter.runs
    fill_in "Six", with: @batter.six
    fill_in "Three", with: @batter.three
    fill_in "Two", with: @batter.two
    fill_in "Zero", with: @batter.zero
    click_on "Update Batter"

    assert_text "Batter was successfully updated"
    click_on "Back"
  end

  test "destroying a Batter" do
    visit batters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Batter was successfully destroyed"
  end
end
