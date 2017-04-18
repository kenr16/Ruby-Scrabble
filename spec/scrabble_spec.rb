require('rspec')
# require('scrabble')
require('numbers_to_words')
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
  expect(1.numbers_to_words()).to(eq("one"))
  end

  it("Convert a user's two digit number input to a text word.") do
  expect(31.numbers_to_words()).to(eq("thirty one"))
  end

  it("Convert a user's two digit number in the teens input to a text word.") do
  expect(16.numbers_to_words()).to(eq("sixteen"))
  end

end
