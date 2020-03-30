class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(anagrams)
    @result = []
    sorted = anagrams.collect {|anagram| anagram.split("").sort.join("")}
    sorted.each {|match| @result << match if match == @word}
    @result
  end

end
