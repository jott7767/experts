# frozen_string_literal: true

class ShortenUrl
  def self.call(url)
    new(url).call
  end

  def initialize(url)
    @url = url
  end

  def call
    shorten_url
  end

  private

  def shorten_url
    Bitly.client.shorten(@url).short_url
  rescue StandardError
    return ""
  end
end
