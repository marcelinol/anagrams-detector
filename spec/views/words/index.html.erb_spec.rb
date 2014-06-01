require 'spec_helper'

describe "words/index" do
  before(:each) do
    assign(:words, [
      stub_model(Word,
        :firstWord => "First Word",
        :secondWord => "Second Word",
        :anagram => false
      ),
      stub_model(Word,
        :firstWord => "First Word",
        :secondWord => "Second Word",
        :anagram => false
      )
    ])
  end

  it "renders a list of words" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Word".to_s, :count => 2
    assert_select "tr>td", :text => "Second Word".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
