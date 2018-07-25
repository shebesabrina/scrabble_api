class WelcomeController < ApplicationController
  def index
    conn = Faraday.new('https://od-api.oxforddictionaries.com/api/v1/')
    conn.get('entries/en/mindfulness/sentences')
    response = Faraday.get('https://od-api.oxforddictionaries.com:443/api/v1/entries/en/mindfulness/sentences')
  end
end
