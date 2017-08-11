#!/user/bin/env ruby
require './lib/top_10_fl_beaches'
require './lib/top_10_fl_beaches/scraper'
require './lib/top_10_fl_beaches/cli'

TopBeaches::CLI.new.start
