require "pry"

class CookieInventory
  def initialize
    @inventory = {
      peanut_butter: 0,
      chocolate_chip: 0,
      sugar: 0
    }
  end

  def cook_batch!(type, number)
    @inventory[type] += number
  end

  def sell!(type, number)
    @inventory[type] < number ? "Don't have that many!" : @inventory[type] -= number
  end
end
