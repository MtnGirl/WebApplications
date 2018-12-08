require 'test_helper'

class SpauniversityControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get spauniversity_index_url
    assert_response :success
  end

end
