class MTBCliGem::Trail

  attr_accessor :name, :status, :hours

  def self.today
 
    self.scrape_trails

  end
    
  # def self.scrape_trails
  #   trails = []
  #   trails << self.scrape_dorba
  #   trails
  # end

  def self.get_page
    doc = Nokogiri::HTML(open("https://dorba.org/index.php"))
  end

  def self.get_trails
    binding.pry
    self.get_page.xpath("/html/body/div[@id='main_content']/div[@class='row-fluid']/div[@id='left_nav']/div[@class='well sidebar-nav'][1]/div[@id='accordion2']/div[@class='accordion-group'][1]/div[@id='collapseOne']/div[@class='accordion-inner']/ul[@id='dorba']/li[1]/a[@class='open']")
  end



end

# class WorldsBestRestaurants::Scraper

#   def get_page
#     Nokogiri::HTML(open("http://www.theworlds50best.com/list/1-50-winners"))
#   end 
  
#   def scrape_restaurants_index
#     self.get_page.css("div#t1-50 li")
#   end

#   def make_restaurants
#     scrape_restaurants_index.each do |r| 
#       WorldsBestRestaurants::Restaurant.new_from_index_page(r)
#     end  
#   end
# end