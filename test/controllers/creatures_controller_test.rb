require 'test_helper'

class CreaturesControllerTest < ActionController::TestCase
  setup do
    @creature = creatures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:creatures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create creature" do
    assert_difference('Creature.count') do
      post :create, creature: { common_name: @creature.common_name, notes: @creature.notes, photo: @creature.photo, scientific_name: @creature.scientific_name, sighting_datetime: @creature.sighting_datetime, sighting_location: @creature.sighting_location }
    end

    assert_redirected_to creature_path(assigns(:creature))
  end

  test "should show creature" do
    get :show, id: @creature
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @creature
    assert_response :success
  end

  test "should update creature" do
    patch :update, id: @creature, creature: { common_name: @creature.common_name, notes: @creature.notes, photo: @creature.photo, scientific_name: @creature.scientific_name, sighting_datetime: @creature.sighting_datetime, sighting_location: @creature.sighting_location }
    assert_redirected_to creature_path(assigns(:creature))
  end

  test "should destroy creature" do
    assert_difference('Creature.count', -1) do
      delete :destroy, id: @creature
    end

    assert_redirected_to creatures_path
  end
end
