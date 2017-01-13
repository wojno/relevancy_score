# count significant words in a text blob
class MeaningfulWords
  def initialize(text:)
    @text = text 
  end

  # returns a count of meaningful words
  def count
    remove_stopwords.split.count
  end

  private

  def stopwords
    YAML.load_file('./lib/relevancy_score/stopwords.yml')
  end

  def remove_stopwords
    @text.gsub(Regexp.new(stopwords.map{|word| "\\b#{word}\\b"}.join('|')), '')
  end

end
