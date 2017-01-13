require 'yaml'
Dir.glob('./lib/relevancy_score/*', &method(:require))

# Calculate the relevancy of a search term against a text blob
module RelevancyScore
  # Calculation class to determine how relevant a keyword is to its document
  class Calculate
    def initialize(text:, keyword:)
      @text    = NormalizeData.new(text).munge
      @keyword = keyword.downcase
    end

    def score
      (frequency * title_score) / meaningful_word_count
    end

    private

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
      # TODO : implement
      100
    end

  end
end
