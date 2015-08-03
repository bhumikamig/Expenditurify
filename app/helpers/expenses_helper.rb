module ExpensesHelper
	def calculate_sum(expense)
		sum = 0
		expense.each do |a|
			sum += a.price
		end
		return sum
	end
end
