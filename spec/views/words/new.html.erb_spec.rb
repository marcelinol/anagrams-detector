require 'spec_helper'

describe "words/new" do
  before(:each) do
    assign(:word, stub_model(Word,
      :firstWord => "MyString",
      :secondWord => "MyString",
      :anagram => false
    ).as_new_record)
  end

  it "renders new word form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", words_path, "post" do
      assert_select "input#word_firstWord[name=?]", "word[firstWord]"
      assert_select "input#word_secondWord[name=?]", "word[secondWord]"
      assert_select "input#word_anagram[name=?]", "word[anagram]"
    end
  end
end
