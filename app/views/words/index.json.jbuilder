json.array!(@words) do |word|
  json.extract! word, :id, :firstWord, :secondWord, :anagram
  json.url word_url(word, format: :json)
end
