class Array
  define_method(:three_digits) do
    single_digit_hash = {"0"=>"", "1"=>"one ", "2"=>"two ", "3"=>"three ", "4"=>"four ", "5"=>"five ", "6"=>"six ", "7"=>"seven ", "8"=>"eight ", "9"=>"nine "}
    teens_digit_hash = {"0"=>"ten ", "1"=>"eleven ", "2"=>"twelve ", "3"=>"thirteen ", "4"=>"fourteen ", "5"=>"fifteen ", "6"=>"sixteen ", "7"=>"seventeen ", "8"=>"eighteen ", "9"=>"nineteen "}
    double_digit_hash = {"2"=>"twenty ", "3"=>"thirty ", "4"=>"forty ", "5"=>"fifty ", "6"=>"sixty ", "7"=>"seventy ", "8"=>"eighty ", "9"=>"ninty "}
    output_array = []
    input_array = self
    number_of_digits = input_array.length()
    first_digit = input_array.pop()
    if number_of_digits == 1
      output_array.push(single_digit_hash.fetch(first_digit))
    elsif number_of_digits == 2
      second_digit = input_array.shift()
      if second_digit == "1"
        teens = teens_digit_hash.fetch(first_digit)
        output_array.push(teens)
      else
        output_array.push(double_digit_hash.fetch(second_digit))
        output_array.push(single_digit_hash.fetch(first_digit))
      end
    elsif number_of_digits == 3
      third_digit = input_array.shift()
      second_digit = input_array.shift()
      if third_digit == "0"
      else
        output_array.push(single_digit_hash.fetch(third_digit))
        output_array.push("hundred ")
      end
      if second_digit == "1"
        teens = teens_digit_hash.fetch(first_digit)
        output_array.push(teens)
      elsif second_digit == "0"
        output_array.push(single_digit_hash.fetch(first_digit))
      else
        output_array.push(double_digit_hash.fetch(second_digit))
        output_array.push(single_digit_hash.fetch(first_digit))
      end
    end
    output_array.join()
  end
end



class Fixnum
  define_method(:numbers_to_words) do
    input_string2 = self.to_s
    number_of_digits2 = input_string2.length()
    input_array2 = input_string2.split("")
    output_array2 = []
    if number_of_digits2 >= 3
      first_three_digits = []
      first_three_digits.unshift(input_array2.pop())
      first_three_digits.unshift(input_array2.pop())
      first_three_digits.unshift(input_array2.pop())
      output_array2.push(first_three_digits.three_digits())
    elsif number_of_digits2 < 3
      if input_array2 == ["0"]
        input_array2.pop()
        output_array2.push("zero")
      else
      output_array2.push(input_array2.three_digits())
      end
    end

    number_of_digits3 = input_array2.length()

    if number_of_digits3 >= 3
      first_three_digits = []
      first_three_digits.unshift(input_array2.pop())
      first_three_digits.unshift(input_array2.pop())
      first_three_digits.unshift(input_array2.pop())
      ran_already = first_three_digits.three_digits()
      if ran_already == ""
      else
        output_array2.unshift("thousand ")
        output_array2.unshift(ran_already)
      end
    elsif number_of_digits3 < 3 && number_of_digits3 >= 1
      output_array2.unshift("thousand ")
      output_array2.unshift(input_array2.three_digits())
    end

    number_of_digits3 = input_array2.length()
    if number_of_digits3 >= 3
      first_three_digits = []
      first_three_digits.unshift(input_array2.pop())
      first_three_digits.unshift(input_array2.pop())
      first_three_digits.unshift(input_array2.pop())
      ran_already2 = first_three_digits.three_digits()
      if ran_already2 == ""
      else
        output_array2.unshift("million ")
        output_array2.unshift(ran_already2)
      end
    elsif number_of_digits3 < 3 && number_of_digits3 >= 1
      output_array2.unshift("million ")
      output_array2.unshift(input_array2.three_digits())
    end

    number_of_digits3 = input_array2.length()
    if number_of_digits3 >= 3
      first_three_digits = []
      first_three_digits.unshift(input_array2.pop())
      first_three_digits.unshift(input_array2.pop())
      first_three_digits.unshift(input_array2.pop())
      ran_already3 = first_three_digits.three_digits()

      if ran_already3 == ""
      else
        output_array2.unshift("billion ")
        output_array2.unshift(ran_already3)
      end
    elsif number_of_digits3 < 3 && number_of_digits3 >= 1
      output_array2.unshift("billion ")
      output_array2.unshift(input_array2.three_digits())
    end

    output_array2.join()
  end
end
