require 'test_helper'

class OccurrenceFrequencyTest < Minitest::Test
  def test_that_it_returns_the_number_of_times_keyword_appears_basic
    count = OccurrenceFrequency.new(text: 'return of the jedi', keyword: 'jedi').calculate
    assert_equal(1, count)
  end
  def test_that_it_returns_the_number_of_times_keyword_appears_advanced
    text  = 'your father\'s light saber this is the weapon of a jedi knight not as clumsy or random as a blaster an elegant weapon for a more civilized age for over a thousand generations the jedi knights were the guardians of peace and justice in the old republic before the dark times... before the empire'
    count = OccurrenceFrequency.new(text: text, keyword: 'jedi').calculate
    assert_equal(2, count)
  end
end
