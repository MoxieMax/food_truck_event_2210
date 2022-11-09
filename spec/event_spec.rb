require 'pry'
require './lib/item'
require './lib/food_truck'
require './lib/event'

RSpec.describe Event do
  describe '#iteration 2' do
    let(:item1){Item.new({name: 'Peach Pie (Slice)', price: '$3.75'})}
    let(:item2){Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})}
    let(:item3){Item.new({name: 'Peach-Raspberry Nice Cream', price: '$5.30'})}
    let(:item4){Item.new({name: 'Banana Nice Cream', price: '$4.25'})}
    
    let(:food_truck1){FoodTruck.new('Rocky Mountain Pies')}
    let(:food_truck2){FoodTruck.new("Ba-Nom-a-Nom")}
    let(:food_truck3){FoodTruck.new("Palisade Peach Shack")}
    
    let(:event){Event.new('South Pearl Street Farmers Market')}
    
    it 'exists and has readable attributes' do
      expect(event).to be_an(Event)
      expect(event.food_trucks).to eq([])
    end
    
  end
end
# it '#' do
#   expect().to eq()
# end