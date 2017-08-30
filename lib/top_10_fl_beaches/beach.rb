class TopBeaches::Beach
  attr_accessor :name, :description
  @@beaches = []

  def initialize(name, description)
    @name = name
    @description = description
    @@beaches << self
  end

  def self.all
    @@beaches
  end

  def self.number(input)
    index = input.to_i-1
      puts "#{@@beaches[index].name}"
      puts "#{@@beaches[index].description}"
  end

end
