# standardize all data and prepare it for analysis
class NormalizeData
  def initialize(data)
    @data = data
  end
  # returns a new version of our data
  def munge
    munged = {}
    @data.keys.each{|key|
      munged[key] = @data[key].downcase.gsub(/[!?.,;\(\)]+/,'')  
    }
    munged
  end
end
