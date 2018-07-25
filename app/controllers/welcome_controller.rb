class WelcomeController < ApplicationController
  def index
    response = Faraday.get('https://od-api.oxforddictionaries.com:443/api/v1/entries/en/mindfulness/sentences')
  end
end
