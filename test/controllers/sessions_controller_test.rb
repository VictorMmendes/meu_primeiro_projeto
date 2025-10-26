require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_sessions_path
    assert_response :success
  end

  test "should create session" do
    # Create a user with a valid bcrypt password
    user = User.create!(name: "Login User", email: "login@example.com", password: "password", password_confirmation: "password")
    post sessions_path, params: { email: user.email, password: "password" }
    assert_response :redirect
  end

  test "should destroy session" do
    delete sessions_path
    assert_response :redirect
  end
end
