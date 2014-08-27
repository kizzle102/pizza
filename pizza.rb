class Pizza
  attr_accessor :toppings

  def initialize(toppings=[Topping.new('cheese', vegetarian: true)])
    @toppings = toppings
  end

  def vegetarian?
    if self.toppings.all? {|x| x.vegetarian == true}
      true
    else
      false
    end
  end
end

class Topping
  attr_accessor :name, :vegetarian

  def initialize(name, vegetarian: false)
    @name = name
    @vegetarian = vegetarian
  end
end
