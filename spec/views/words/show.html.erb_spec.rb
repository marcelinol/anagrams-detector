require 'spec_helper'

describe "words/show" do
  before(:each) do
    @word = assign(:word, stub_model(Word,
      :firstWord => "First Word",
      :secondWord => "Second Word",
      :anagram => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Word/)
    rendered.should match(/Second Word/)
    rendered.should match(/false/)
  end
end
