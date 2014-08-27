require './pizza'

describe Pizza do
  it "exists" do
    expect(Pizza).to be_a(Class)
  end

  describe '.initialize' do
    it 'records all of the toppings' do
      toppings = [
        Topping.new('mushrooms', vegetarian: true),
        Topping.new('pepperoni')
      ]
      pizza = Pizza.new(toppings)

      expect(pizza.toppings).to eq(toppings)
    end

    it "defaults the toppings to cheese only, if the pizza has no toppings" do
      pizza = Pizza.new

      expect(pizza.toppings.size).to eq(1)
      expect(pizza.toppings.first.name).to eq('cheese')
    end     
  end


  describe '.vegetarian?' do
    it "states whether a pizza is vegetarian or not" do
      toppings = [
        Topping.new('mushrooms', vegetarian: true),
        Topping.new('pepperoni')
      ]
      pizza = Pizza.new(toppings)

      expect(pizza.vegetarian?).to eq(false)
    end
  end

  describe '.add_topping' do
    it "adds a topping to the pizza topping array" do
      toppings = [
        Topping.new('mushrooms', vegetarian: true),
        Topping.new('pepperoni')
      ]
      pizza = Pizza.new(toppings)

      expect(pizza.toppings.size).to eq(3)
      expect(pizza.toppings.last.class).to eq(Topping)
    end
  end
end

describe Topping do
  it "exists" do
    expect(Topping).to be_a(Class)
  end

  describe '.initialize' do
  it "sets the name of the topping" do
    topping = Topping.new('olives')

    expect(topping.name).to eq('olives')
    end
  end

  it "sets whether or not the topping is vegetarian" do
    topping = Topping.new "bell peppers", vegetarian: true

    expect(topping.vegetarian).to eq(true)
  end
end
