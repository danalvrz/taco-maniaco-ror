require 'application_system_test_case'

class RecipieFoodsTest < ApplicationSystemTestCase
  setup do
    @recipie_food = recipie_foods(:one)
  end

  test 'visiting the index' do
    visit recipie_foods_url
    assert_selector 'h1', text: 'Recipie foods'
  end

  test 'should create recipie food' do
    visit recipie_foods_url
    click_on 'New recipie food'

    fill_in 'Quantity', with: @recipie_food.quantity
    click_on 'Create Recipie food'

    assert_text 'Recipie food was successfully created'
    click_on 'Back'
  end

  test 'should update Recipie food' do
    visit recipie_food_url(@recipie_food)
    click_on 'Edit this recipie food', match: :first

    fill_in 'Quantity', with: @recipie_food.quantity
    click_on 'Update Recipie food'

    assert_text 'Recipie food was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Recipie food' do
    visit recipie_food_url(@recipie_food)
    click_on 'Destroy this recipie food', match: :first

    assert_text 'Recipie food was successfully destroyed'
  end
end
