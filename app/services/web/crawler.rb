# frozen_string_literal: true

require 'nokogiri'
require 'open-uri'

module Web
  # A simple quotes crawler
  class Crawler
    def initialize(tag, path = 'http://quotes.toscrape.com/tag/')
      @url = path + tag
      @doc = Nokogiri::HTML(URI.open(@url))
    end

    def bodies
      @doc.search("//div[@class='quote']").map do |quote|
        {
          quote: quote.children.at('span').content,
          author: quote.children.at('span small').content,
          author_about: quote.children.at('span a')['href'],
          tags: quote.children.at('div meta')['content'].split(',')
        }
      end
    end
  end
end
