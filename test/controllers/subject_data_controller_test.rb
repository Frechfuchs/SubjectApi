require "test_helper"

class SubjectDataControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get subject_data_show_url
    assert_response :success
  end
end
