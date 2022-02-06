require "test_helper"

class FlocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flock = flocks(:one)
  end

  test "should get index" do
    get flocks_url
    assert_response :success
  end

  test "should get new" do
    get new_flock_url
    assert_response :success
  end

  test "should create flock" do
    assert_difference('Flock.count') do
      post flocks_url, params: { flock: { age: @flock.age, batch_no: @flock.batch_no, current_stock: @flock.current_stock, date_in: @flock.date_in, expected_retirement_date: @flock.expected_retirement_date, flock_stored: @flock.flock_stored, flock_type: @flock.flock_type, initial_stock: @flock.initial_stock, notes: @flock.notes, source: @flock.source, status: @flock.status } }
    end

    assert_redirected_to flock_url(Flock.last)
  end

  test "should show flock" do
    get flock_url(@flock)
    assert_response :success
  end

  test "should get edit" do
    get edit_flock_url(@flock)
    assert_response :success
  end

  test "should update flock" do
    patch flock_url(@flock), params: { flock: { age: @flock.age, batch_no: @flock.batch_no, current_stock: @flock.current_stock, date_in: @flock.date_in, expected_retirement_date: @flock.expected_retirement_date, flock_stored: @flock.flock_stored, flock_type: @flock.flock_type, initial_stock: @flock.initial_stock, notes: @flock.notes, source: @flock.source, status: @flock.status } }
    assert_redirected_to flock_url(@flock)
  end

  test "should destroy flock" do
    assert_difference('Flock.count', -1) do
      delete flock_url(@flock)
    end

    assert_redirected_to flocks_url
  end
end
