class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(anagrams)
    @result = []
    sorted = anagrams.collect {|anagram| anagram.split("").sort}
    sorted.each {|match| @result << match if match == @word.split("").sort}
    @result
  end

end
