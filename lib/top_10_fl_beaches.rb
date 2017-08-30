require 'open-uri'
require 'pry'
require 'nokogiri'
require 'bundler'

module TopBeaches
end

require_relative './top_10_fl_beaches/version'
require_relative './top_10_fl_beaches/cli'
require_relative './top_10_fl_beaches/scraper'
require_relative './top_10_fl_beaches/beach'
