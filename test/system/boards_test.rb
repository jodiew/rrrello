require "application_system_test_case"

class BoardsTest < ApplicationSystemTestCase
  setup do
    @board = Board.ordered.first
  end

  test "visiting the index" do
    visit boards_url
    assert_selector "h1", text: "Boards"
  end

  test "should create board" do
    visit boards_url
    assert_selector "h1", text: "Boards"

    click_on "New board"
    assert_selector "h1", text: "Boards"

    fill_in "Title", with: "Capybara board"
    click_on "Create Board"

    assert_selector "h1", text: "Boards"
    assert_text "Capybara board"
  end

  test "should update Board" do
    visit board_url(@board)
    assert_selector "h1", text: @board.title

    click_on "Edit this board", match: :first
    fill_in "Title", with: "Updated board"

    click_on "Update Board"
    assert_selector "h1", text: "Updated board"

    assert_text "Board was successfully updated"
    click_on "Back"
  end

  test "should destroy Board" do
    visit board_url(@board)
    click_on "Destroy this board", match: :first

    assert_text "Board was successfully destroyed"
  end
end
