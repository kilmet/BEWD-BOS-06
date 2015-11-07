require 'test_helper'

class PaintingsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  def test_create_painting
    post :create, painting: {title: "the scream", year: 1945}
    assert assigns :painting
    assert Painting.last.title, "the scream"
  end

end
