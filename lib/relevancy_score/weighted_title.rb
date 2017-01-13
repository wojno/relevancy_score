# Calculate a score based upon a keywords presence in the title
class WeightedTitle
  def initialize(title:, keyword:)
    @title   = title
    @keyword = keyword
  end
  def calculate
    @title.match(/\b#{@keyword}\b/) ? 1.42 : 0.9
  rescue
    0.9
  end
end
