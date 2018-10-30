# frozen_string_literal: true

# Quotes api
class QuotesController < ApplicationController
  before_action :authenticate_user,  only: %i[index]
  before_action :ensure_quotes

  def index
    render json: { quotes: @quotes.map(&:serialize) }
  end

  private

  def ensure_quotes
    @quotes = if params[:id]
                Quote.in(tags: [params[:id]]).presence || factory
              else
                Quote.all
              end
  end

  def factory
    Quotes::Factory.make(web_search)
  end

  def web_search
    Web::Crawler.new(params[:id]).bodies
  end
end
