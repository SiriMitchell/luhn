module Luhn

      #create a string of the given numbers
      #get every other value and do something (evens)(each with index)
      #muliply value time 2
      #check if value is 10 or more
      #if it is, take away 9
      #add them all together!

  def self.is_valid?(number)
    sum = 0


      number = number.to_s.reverse.split('')

      number.each_with_index do |value, index|
    
        if index.odd?
          value = value.to_i
          value = value * 2
    
          if value >= 10
            value = value - 9
            sum += value
          else
            sum += value
          end
      
        else
          sum += value.to_i
        end
      end
    
    if sum % 10 == 0
      return true
    else
      return false
    end
  end
end


puts Luhn.is_valid?(4194560385008504)
puts Luhn.is_valid?(4194560385008505)
puts Luhn.is_valid?(377681478627336)
puts Luhn.is_valid?(377681478627337)