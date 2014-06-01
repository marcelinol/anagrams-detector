class Word < ActiveRecord::Base

before_save :is_anagram
	def is_anagram
		if firstWord.length != secondWord.length then
			self.anagram = false
			return true			#Evita que o false do anagrama falhe o before_save, pois recebendo false ele não salva no database
		else
			firstWord.downcase!
			secondWord.downcase!
			if firstWord.eql?(secondWord) then
				self.anagram = false
				return true			#Evita que o false do anagrama falhe o before_save, pois recebendo false ele não salva no database
			else
				self.anagram = firstWord.chars.sort==secondWord.chars.sort
				return true			#Evita que o false do anagrama falhe o before_save, pois recebendo false ele não salva no database
			end
		end
	end
end
