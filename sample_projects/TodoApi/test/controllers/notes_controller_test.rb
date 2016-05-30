require 'test_helper'

class NotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @note = notes(:one)
  end

  test "should get index" do
    get notes_url
    assert_response :success
  end

  test "should create note" do
    assert_difference('Note.count') do
      post notes_url, params: { note: { content: @note.content, title: @note.title } }
    end

    assert_response 201
  end

  test "should show note" do
    get note_url(@note)
    assert_response :success
  end

  test "should update note" do
    patch note_url(@note), params: { note: { content: @note.content, title: @note.title } }
    assert_response 200
  end

  test "should destroy note" do
    assert_difference('Note.count', -1) do
      delete note_url(@note)
    end

    assert_response 204
  end
end
