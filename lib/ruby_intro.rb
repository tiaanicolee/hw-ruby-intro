# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
	arr.each do |x|
		total += x
	end
	return total
end

def max_2_sum arr
  largest = 0
	largest2 = 0
	
	if arr.length >= 2
		largest = arr.sort[-1]
		largest2 = arr.sort[-2]
	elsif arr.length == 1
		largest = arr[0]
	end
	
	return largest + largest2
end

def sum_to_n? arr, n
  return false if arr.length == 1 || arr.length == 0

  arr.permutation(2).to_a.each do |x|
  	return true if (x[0] + x[1]) == n
  end
  return false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  s =~ /^[a-z&&[^aeiou]]/i
end

def binary_multiple_of_4? s
	return false if s.length == 0
  s =~ /^[01]*$/ && (s.to_i(2)%4) == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
		raise ArgumentError.new("ISBN needs to be entered") if isbn == ''
    raise ArgumentError.new("Price must be greater than 0") if price <= 0
		@isbn = isbn
		@price = price
  end
  
  def price_as_string
  	"$#{format("%.2f", price)}"
  end
	
end
