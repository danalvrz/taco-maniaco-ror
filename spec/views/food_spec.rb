require 'rails_helper'

RSpec.describe Food, type: :model do
  before :each do
    @user1 = User.create(name: 'Testo', email: 'testo@gmail.com', password: '123456')
    @user1.save!
    @food = Food.new(name: 'Cheese', measurement_unit: 'Unit', price: 50)
  end

  it 'should not be null' do
    expect(@food).to_not be_valid
  end

  it 'should pass if type is String' do
    expect(@food.name).to be_a(String)
  end

  it 'should fail if type is Numeric' do
    @food.name = 1
    expect(@food.name).not_to be_a(Numeric)
  end

  it 'should be valid' do
    @food.user_id = @user1.id
    expect(@food).to be_valid
  end
end
