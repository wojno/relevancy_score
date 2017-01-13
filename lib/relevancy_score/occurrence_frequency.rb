# calculates the frequency a particular keyword appears in text
class OccurrenceFrequency
  def initialize(text:, keyword:)
    @text    = text
    @keyword = keyword
  end
  # return the number of times a keyword appears
  def calculate
    @text.scan("#{@keyword}").size
  end
end
