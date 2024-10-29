require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

=begin 
## Exercise 5: Calculations

1. Output the total revenue for the entire company (all stores), using Active Record's `.sum` calculation method.
2. On the next line, also output the average annual revenue for all stores.
3. Output the number of stores that are generating $1M or more in annual sales. **Hint:** Chain together `where` and `size` (or `count`) Active Record methods.

=end


puts "Exercise 5"
puts "----------"

# Your code goes here ...

# 1
puts total_revenue = Store.sum(:annual_revenue)

# 2
puts average_revenue = Store.average(:annual_revenue)

# 3
puts stores_over_one_million = Store.where("annual_revenue > ?", 1000000).count
