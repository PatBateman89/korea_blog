require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end

  test "should get esl_lessons" do
    get pages_esl_lessons_url
    assert_response :success
  end

end
