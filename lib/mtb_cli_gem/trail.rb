class MTBCliGem::Trail

  attr_accessor :name, :status, :hours

  def self.today
    # I should return the current of trails and their status
    # scrape DORBA.org
    self.scrape_trails

  end
    
  def self.scrape_trails
    trails = []
    trails << self.scrape_dorba
    trails
  end

  def self.scrape_dorba
    doc = Nokogiri::HTML(open("https://dorba.org/index.php"))
    binding.pry
    title = doc.search("h2.main-title").text
  end

end