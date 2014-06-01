class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :firstWord
      t.string :secondWord
      t.boolean :anagram

      t.timestamps
    end
  end
end
