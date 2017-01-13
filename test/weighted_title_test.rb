require 'test_helper'

class WeightedTitleTest < Minitest::Test
  def setup
    @present = WeightedTitle.new(title: 'return of the jedi', keyword: 'jedi').calculate
    @missing = WeightedTitle.new(title: 'the empire strikes back', keyword: 'jedi').calculate
  end
  def test_that_titles_containing_the_keyword_carry_more_weight
    assert_operator @present, :>, @missing 
  end
end
