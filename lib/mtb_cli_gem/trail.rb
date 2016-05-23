class MTBCliGem::Trail

  attr_accessor :name, :status, :hours

  def self.today
 
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
  end

end