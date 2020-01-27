# frozen_string_literal: true
require 'open-uri'

class ScrapePersonalSite
  def self.call(url)
    new(url).call
  end

  def initialize(url)
    @url = url
    @data = {}
  end

  def call
    scrape
    @data
  end

  private

  def scrape
    html = Nokogiri::HTML(open(@url))
    @data['h1'] = html.css('h1')&.text
    @data['h2'] = html.css('h2')&.text
    @data['h3'] = html.css('h3')&.text
  rescue StandardError
    return {}
  end
end
