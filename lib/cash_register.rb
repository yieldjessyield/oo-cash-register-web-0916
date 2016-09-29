class CashRegister

attr_accessor :total, :discount, :title, :price, :quantity, :items_array

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items_array = []
  end

  def add_item(title, price, quantity = 0)
    if quantity > 0
    @total += price * quantity
      quantity.times do |q|
        items_array.push(title)
      end
    elsif quantity == 0
      @total += price
    @items_array << title

    end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
    @total *= 0.8
    "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items_array
  end

  def void_last_transaction
    @total -= @total
    #@items_array.pop
  end
end
