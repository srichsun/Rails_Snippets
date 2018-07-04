require 'test_helper'

class BitchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bitch = bitches(:one)
  end

  test "should get index" do
    get bitches_url
    assert_response :success
  end

  test "should get new" do
    get new_bitch_url
    assert_response :success
  end

  test "should create bitch" do
    assert_difference('Bitch.count') do
      post bitches_url, params: { bitch: { bio: @bitch.bio, birthday: @bitch.birthday, name: @bitch.name } }
    end

    assert_redirected_to bitch_url(Bitch.last)
  end

  test "should show bitch" do
    get bitch_url(@bitch)
    assert_response :success
  end

  test "should get edit" do
    get edit_bitch_url(@bitch)
    assert_response :success
  end

  test "should update bitch" do
    patch bitch_url(@bitch), params: { bitch: { bio: @bitch.bio, birthday: @bitch.birthday, name: @bitch.name } }
    assert_redirected_to bitch_url(@bitch)
  end

  test "should destroy bitch" do
    assert_difference('Bitch.count', -1) do
      delete bitch_url(@bitch)
    end

    assert_redirected_to bitches_url
  end
end
