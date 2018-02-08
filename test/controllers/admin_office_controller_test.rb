require 'test_helper'

class AdminOfficeControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get admin_office_login_url
    assert_response :success
  end

end
