require 'test_helper'

class MeaningfulWordsTest < Minitest::Test
  def test_that_it_returns_the_number_of_meaningful_words
    count = MeaningfulWords.new(text: 'return of the jedi').count
    assert_equal(2, count)
  end
  def test_that_it_removes_words_which_begin_the_blob
    text  = 'your father\'s light saber this is the weapon of a jedi knight not as clumsy or random as a blaster an elegant weapon for a more civilized age for over a thousand generations the jedi knights were the guardians of peace and justice in the old republic before the dark times... before the empire'
    count = MeaningfulWords.new(text: text).count
    assert_operator text.split.size, :>=, count
    assert_equal(25, count)
  end
  def test_that_it_removes_words_which_end_the_blob
    text  = 'this is the end not'
    count = MeaningfulWords.new(text: text).count
    assert_operator text.split.size, :>=, count
    assert_equal(1, count)
  end
end
