require 'test_helper'
include Rails.application.routes.url_helpers

class FilmsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get films_index_url
    assert_response :success
  end

end
