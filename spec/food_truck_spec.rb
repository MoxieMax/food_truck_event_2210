require './lib/item'
require './lib/food_truck'

RSpec.describe FoodTruck do
  describe '#iteration 1' do
    let(:food_truck){FoodTruck.new('Rocky Mountain Pies')}
    let(:item1){Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})}
    let(:item2){Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})}
    
    it 'exists and has readable attributes' do
      expect(food_truck).to be_a(FoodTruck)
      expect(food_truck.name).to eq('Rocky Mountain Pies')
      expect(food_truck.inventory).to eq({})
    end
    
    it 'initializes with empty inventory, can #check stock' do
      expect(food_truck.check_stock(item1)).to eq(0)
    end
    
    xit 'can #stock an item and #check_stock for a count of a given item' do
      food_truck.stock(item1, 30)
      expect(food_truck.inventory).to eq({
                                        :item1 => 30
                                        })
      expect(food_truck.check_stock(item1)).to eq(30)
      
      food_truck.stock(item1, 25)
      expect(food_truck.check_stock(item1)).to eq(55)
      
      food_truck.stock(item2, 12)
      expect(food_truck.inventory).to eq({
                                        :item1 => 30,
                                        :item2 => 12
                                        })
    end
    
    
  end
end
# it '#' do
#   expect().to eq()
# end