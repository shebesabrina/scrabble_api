class WelcomeController < ApplicationController
  def index
    conn = Faraday.new('https://od-api.oxforddictionaries.com:443/api/v1/')
    response = conn.get('entries/en/mindfulness/sentences') do |req|
      # req.url 'https://od-api.oxforddictionaries.com/api/v1/'
      req.headers['app_id'] = ENV['app_id']
      req.headers['app_key'] = ENV['app_key']
    end
     response_data = JSON.parse(response.body)
      response_data['results'].first["lexicalEntries"].first["sentences"].first["regions"] #this gives me N.America
      response_data['results'].first["lexicalEntries"].first["sentences"].first["text"] #this gives me the first sentence
      #I need a list of sentances. Iterate?
  end
end
