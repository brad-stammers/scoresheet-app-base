require "application_system_test_case"

class InningsTest < ApplicationSystemTestCase
  setup do
    @inning = innings(:one)
  end

  test "visiting the index" do
    visit innings_url
    assert_selector "h1", text: "Innings"
  end

  test "creating a Inning" do
    visit innings_url
    click_on "New Inning"

    fill_in "Away", with: @inning.away
    fill_in "Batting team", with: @inning.batting_team
    fill_in "Bowling team", with: @inning.bowling_team
    fill_in "Compeition", with: @inning.compeition
    fill_in "End date", with: @inning.end_date
    fill_in "Ground", with: @inning.ground
    fill_in "Home", with: @inning.home
    fill_in "Inning no", with: @inning.inning_no
    fill_in "Round", with: @inning.round
    fill_in "Start date", with: @inning.start_date
    fill_in "Umpire 1", with: @inning.umpire_1
    fill_in "Umpire 2", with: @inning.umpire_2
    click_on "Create Inning"

    assert_text "Inning was successfully created"
    click_on "Back"
  end

  test "updating a Inning" do
    visit innings_url
    click_on "Edit", match: :first

    fill_in "Away", with: @inning.away
    fill_in "Batting team", with: @inning.batting_team
    fill_in "Bowling team", with: @inning.bowling_team
    fill_in "Compeition", with: @inning.compeition
    fill_in "End date", with: @inning.end_date
    fill_in "Ground", with: @inning.ground
    fill_in "Home", with: @inning.home
    fill_in "Inning no", with: @inning.inning_no
    fill_in "Round", with: @inning.round
    fill_in "Start date", with: @inning.start_date
    fill_in "Umpire 1", with: @inning.umpire_1
    fill_in "Umpire 2", with: @inning.umpire_2
    click_on "Update Inning"

    assert_text "Inning was successfully updated"
    click_on "Back"
  end

  test "destroying a Inning" do
    visit innings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inning was successfully destroyed"
  end
end
