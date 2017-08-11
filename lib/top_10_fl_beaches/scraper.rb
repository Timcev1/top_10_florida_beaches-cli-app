
  class TopBeaches::Scraper
    attr_accessor :beach, :description, :index
    def self.scrape_beaches_info
      @beaches = []
      doc = Nokogiri::HTML(open("http://www.coastalliving.com/travel/top-10/florida-best-beaches"))
      doc.css("div.media-body").each_with_index do |beach|
        beach_name = beach.css('h2').text
        beach_description = beach.css('p').text.gsub(/"u00a0"/ || /"u00A0"/, "")
        @beaches << {name: beach_name, description: beach_description}
      end
      @beaches
    end

    def self.all
      @beaches.each { |name, description|
          puts "#{name}"
          puts "#{description}"
        }
    end

    def self.spot(index)''
      @beaches[index].each do |name, description|
        puts "#{name}"
        puts "#{description}"
      end
    end
  end
