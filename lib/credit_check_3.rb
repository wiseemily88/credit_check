#from the rightmost digit, which is the check digit, moving left, double the value of every second digit
#if product of this doubling operation is greater than 9 (e.g., 7 * 2 = 14), then sum the digits of the products (e.g., 10: 1 + 0 = 1, 14: 1 + 4 = 5).
#take the sum of all the digits
#if and only if the total modulo 10 is equal to 0 then the number is valid
#card_number = "6011797668868728"
#output = 0
#valid = false
 class Card_number

  def initialize (card_number, output = 0)
    @card_number = card_number
    @output = output
  end


  def card_number_to_reverse_array
       @card_number.reverse.split(//) #this will reverse the card number, then split it and add it to an array
  end


  def luhn_algorith
    card_number_to_reverse_array.each_with_index do |number, i| #iterates through the array by index and number
    if i.even?
      @output = @output + number.to_i
    else
    double_odd_index = number.to_i * 2
        if double_odd_index > 9
          @output = @output + double_odd_index.to_s.split(//).map(&:to_i).reduce(&:+)
        else
          @output = @output + double_odd_index
        end
      end
    end
    end

    def check_card_number_valid
      luhn_algorith
      if @output % 10 == 0
        puts "The number is valid!"
      else
        puts "The number is invalid!"
      end
    end
end



# create an array, assigning each number in the correct position
# Your Luhn Algorithm Here

# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"
