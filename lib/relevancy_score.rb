require 'yaml'
Dir.glob('./lib/relevancy_score/*.rb', &method(:require))

# Calculate the relevancy of a search term against a text blob
module RelevancyScore
  # Calculation class to determine how relevant a keyword is to its document
  class Calculate
    def initialize(text:, keyword:)
      @text    = NormalizeData.new(text).munge
      @keyword = keyword.downcase
    end

    def score
      calculate_score.round(5)
    end

    private

    def calculate_score
      (frequency * title_score) / meaningful_word_count
    end

    def title_score
      WeightedTitle.new(title: @text[:title], keyword: @keyword).calculate
    end

    def frequency
      OccurrenceFrequency.new(
        text: @text.map{|_key, value| value}.join(' '),
        keyword: @keyword
      ).calculate
    end

    def meaningful_word_count
      MeaningfulWords.new(
        text: @text.map{|_key, value| value}.join(' ')
      ).count
    end

  end
end
