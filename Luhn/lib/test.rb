module Luhn

      #create a string of the given numbers
      #get every other value and do something (evens)(each with index)
      #muliply value time 2
      #check if value is 10 or more
      #if it is, take away 9
      #add them all together!

  def self.is_valid?(number)
    number = []
    sum = 0

      number = number.split('')
      number.map{&:to_i}
      number.reverse
      number.map.with_index { |f, s| s.odd? f * 2 : f}
      number.map { |f| f >= 10 ? f - 9 : f}
      number.inject(0, :+) % 10 == 0
  end
end


Luhn.is_valid?(4194560385008505)


module Luhn

      #create a string of the given numbers
      #get every other value and do something (evens)(each with index)
      #muliply value time 2
      #check if value is 10 or more
      #if it is, take away 9
      #add them all together!

  def self.is_valid?(number)
    number = []
    sum = 0

      number.to_s.reverse.split('')
      (0...number.length).step(1).each_with_index do |value, index|
        if value.odd?

          value = value.to_i
          value = value * 2
    
          if value >= 10
            value = value - 9
            sum = value
          else
            sum = value
          end

        else

          sum = value + number

        end
      end
    
    
    if sum % 10 == 0
      puts "true"
    else
      puts "false"
    end
  end
end


Luhn.is_valid?(4194560385008505)



module Luhn

      #create an array of the given numbers
      #get every other value and do something (evens)(each with index)
      #muliply value time 2
      #check if value is 10 or more
      #if it is, take away 9
      #add them all together!

  def self.is_valid?(number)
    number = []
    sum = 0

      number.each_char do |number|
      number.reverse
      number.map{:to_i}
      number.map.with_index { |f, s| s.odd ? f * 2 : f}
      number.map { |f, s| f >= 10 ? f - 9 : f}
          
      if number.sum % 10 == 0 
        puts "true"
      else
        puts "false"
      end
  end
end


Luhn.is_valid?(4194560385008505)