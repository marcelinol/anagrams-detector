require 'spec_helper'

describe "words/edit" do
  before(:each) do
    @word = assign(:word, stub_model(Word,
      :firstWord => "MyString",
      :secondWord => "MyString",
      :anagram => false
    ))
  end

  it "renders the edit word form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", word_path(@word), "post" do
      assert_select "input#word_firstWord[name=?]", "word[firstWord]"
      assert_select "input#word_secondWord[name=?]", "word[secondWord]"
      assert_select "input#word_anagram[name=?]", "word[anagram]"
    end
  end
end
