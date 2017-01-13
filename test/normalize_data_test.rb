require 'test_helper'

class NormalizeDataTest < Minitest::Test
  def setup
    @text = {
      title: 'Return of the Jedi',
      body:  'Return of the Jedi (also known as Star Wars: Episode VI – Return of the Jedi) is a 1983 American epic space opera film directed by Richard Marquand. The screenplay by Lawrence Kasdan and George Lucas was from a story by Lucas, who was also the executive producer. It was the third and final installment in the original Star Wars trilogy and the first film to use THX technology. The film is set one year after The Empire Strikes Back and was produced by Howard Kazanjian for Lucasfilm Ltd. The film stars Mark Hamill, Harrison Ford, Carrie Fisher, Billy Dee Williams, Anthony Daniels, David Prowse, Kenny Baker, Peter Mayhew and Frank Oz.'
    }
    @munged = NormalizeData.new(@text).munge
  end

  def test_it_munges_all_data_by_downcasing
    assert_equal('return of the jedi', @munged[:title])
  end

  def test_it_munges_all_data_by_removing_puncuation
    assert_equal([], @munged[:body].scan(/[!?.,;\(\)]+/))
  end
end
