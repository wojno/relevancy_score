require 'test_helper'

class RelevancyScoreTest < Minitest::Test
  def setup
    @text = YAML.load_file('./test/files/text.yml')
  end

  def test_that_it_returns_a_score
    assert_equal(0.01654, RelevancyScore::Calculate.new(text: @text, keyword: 'Jedi').score)
  end
end
