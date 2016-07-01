
class CashRegister

	attr_accessor :total, :discount, :items
	
	def initialize ( discount=0 )
		@total = 0
		@discount = discount
		@last = 0
		@items = []
	end

	def add_item (title , price , quantity = 1 )
		#@last = ( price * quantity)
		@total += @last =( price * quantity)
		quantity.times do
			@items << title
		end
	end

	def apply_discount
		if ( @discount == 0 )
			return "There is no discount to apply."
		end
		@total  = @total * ( 1 - (discount.to_f/100))

		"After the discount, the total comes to $" + @total.to_i.to_s  + '.'
	end

	def void_last_transaction
		@total = @total - @last
	end

end
