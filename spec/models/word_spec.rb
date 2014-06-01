require '../spec_helper'

Rspec.describe Word do
  	it "returns true if the words have the same length" do
  		anagram = Word.new(firstWord: "test", secondWord: "tast")
		anagram.firstWord.length.should eq(anagram.secondWord.length)	#=> true

		#anagram = Word.new(firstWord: "test", secondWord: "tes")
		#anagram.firstWord.length.should eq(anagram.secondWord.length)	#=> false
	end

	it "test if the words aren't the same" do
		anagram = Word.new(firstWord: "teste", secondWord: "tetse")
		anagram.firstWord.should_not eq(anagram.secondWord)				#=> true

		#anagram = Word.new(firstWord: "teste", secondWord: "teste")
		#anagram.firstWord.should_not eq(anagram.secondWord)				#=> false
	end

	it "test if the words are anagrams" do
		anagram = Word.new(firstWord: "debit card", secondWord: "bad credit")
		anagram.firstWord.chars.sort.should eq(anagram.secondWord.chars.sort)	#=> true
		
		#anagram = Word.new(firstWord: "debit card", secondWord: "good credit")
		#anagram.firstWord.chars.sort.should eq(anagram.secondWord.chars.sort)	#=> false

	end


end
