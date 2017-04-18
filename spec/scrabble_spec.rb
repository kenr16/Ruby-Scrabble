require('rspec')
# require('scrabble')
require('numbers_to_words')
require('pry')
#
# describe("String#scrabble") do
#
#   it("returns a scrabble score for a letter") do
#   expect("a".scrabble()).to(eq(1))
#   end
#
#   it("returns a scrabble score for a letter d or g") do
#   expect("g".scrabble()).to(eq(2))
#   end
#
#   it("returns a scrabble score for any b, c, m and p") do
#   expect("b".scrabble()).to(eq(3))
#   end
#
#   it("returns a scrabble score for letters f, h, v ,w and y") do
#   expect("f".scrabble()).to(eq(4))
#   end
#
#   it("returns a scrabble score for letter 'k' ") do
#   expect("k".scrabble()).to(eq(5))
#   end
#
#   it("returns a scrabble score for letters 'j' and 'x'") do
#   expect("j".scrabble()).to(eq(8))
#   end
#
#   it("returns a scrabble score for letters 'q' and 'z'") do
#   expect("q".scrabble()).to(eq(10))
#   end
#
#
# end

describe("Fixnum#numbers_to_words") do

  it("Convert a user's single digit number input to a text word.") do
  expect(1.numbers_to_words()).to(eq("one "))
  end

  it("Convert a user's two digit number input to a text word.") do
  expect(31.numbers_to_words()).to(eq("thirty one "))
  end

  it("Convert a user's two digit number in the teens input to a text word.") do
  expect(16.numbers_to_words()).to(eq("sixteen "))
  end

  it("Convert a user's three digit number input to a text word.") do
  expect(121.numbers_to_words()).to(eq("one hundred twenty one "))
  end

  it("Convert a user's four digit number input to a text word.") do
  expect(1214.numbers_to_words()).to(eq("one thousand two hundred fourteen "))
  end

  it("Convert a user's five digit number input to a text word.") do
  expect(11214.numbers_to_words()).to(eq("eleven thousand two hundred fourteen "))
  end

  it("Convert a user's six digit number input to a text word.") do
  expect(100000.numbers_to_words()).to(eq("one hundred thousand "))
  end

  it("Convert a user's seven digit number input to a text word.") do
  expect(1100000.numbers_to_words()).to(eq("one million one hundred thousand "))
  end

  it("Convert a user's 1000001 input to a text word.") do
  expect(1000001.numbers_to_words()).to(eq("one million one "))
  end

  it("Convert a user's 11000 input to a text word.") do
  expect(110000.numbers_to_words()).to(eq("one hundred ten thousand "))
  end

  it("Convert a user's 1000001 input to a text word.") do
  expect(1000001.numbers_to_words()).to(eq("one million one "))
  end

  it("Convert a user's 1000001 input to a text word.") do
  expect(100000001.numbers_to_words()).to(eq("one hundred million one "))
  end

end
