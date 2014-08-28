class Pizza
  attr_accessor :toppings, :delivery_time

  def initialize(toppings=[Topping.new('cheese', vegetarian: true)])
    @toppings = toppings
  end

  def vegetarian?
    self.toppings.all? {|x| x.vegetarian }
  end

  def add_topping(new_topping)
    @toppings << new_topping
  end

  def deliver!
    @delivery_time = Time.now + 30*60
  end

  def late?
    (Time.now - @delivery_time) > 0 ? true : false
  end
end

class Topping
  attr_accessor :name, :vegetarian

  def initialize(name, vegetarian: false)
    @name = name
    @vegetarian = vegetarian
  end
end
