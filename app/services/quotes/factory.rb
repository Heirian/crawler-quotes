# frozen_string_literal: true

module Quotes
  # A quotes collection factory
  class Factory
    def self.make(collection)
      collection.map do |body|
        Quote.create(body)
      end
    end
  end
end
