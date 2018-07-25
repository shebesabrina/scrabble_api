class WelcomeController < ApplicationController
  def index
    Faraday.new('https://od-api.oxforddictionaries.com:443/api/v1/entries/en/mindfulness/sentences')
  end
end
