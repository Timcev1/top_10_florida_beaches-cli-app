
  class TopBeaches::Scraper

    def self.scrape_beaches_info
      doc = Nokogiri::HTML(open("http://www.coastalliving.com/travel/top-10/florida-best-beaches"))
      doc.css("div.media-body")[0..9].each do |beach|
        beach_name = beach.css('h2').text
        beach_description = beach.css('p').text.gsub(/"\u00A0"/, "")
        TopBeaches::Beach.new(beach_name, beach_description)
      end
    end


    def self.spot(index)''
      @beaches[index].each do |name, description|
        puts "#{name}"
        puts "#{description}"
      end
    end
  end
