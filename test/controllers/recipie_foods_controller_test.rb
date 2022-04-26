require 'test_helper'

class RecipieFoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipie_food = recipie_foods(:one)
  end

  test 'should get index' do
    get recipie_foods_url
    assert_response :success
  end

  test 'should get new' do
    get new_recipie_food_url
    assert_response :success
  end

  test 'should create recipie_food' do
    assert_difference('RecipieFood.count') do
      post recipie_foods_url, params: { recipie_food: { quantity: @recipie_food.quantity } }
    end

    assert_redirected_to recipie_food_url(RecipieFood.last)
  end

  test 'should show recipie_food' do
    get recipie_food_url(@recipie_food)
    assert_response :success
  end

  test 'should get edit' do
    get edit_recipie_food_url(@recipie_food)
    assert_response :success
  end

  test 'should update recipie_food' do
    patch recipie_food_url(@recipie_food), params: { recipie_food: { quantity: @recipie_food.quantity } }
    assert_redirected_to recipie_food_url(@recipie_food)
  end

  test 'should destroy recipie_food' do
    assert_difference('RecipieFood.count', -1) do
      delete recipie_food_url(@recipie_food)
    end

    assert_redirected_to recipie_foods_url
  end
end
