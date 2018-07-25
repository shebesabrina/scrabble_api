class WelcomeController < ApplicationController
  def index

    # Refactor to service
    conn = Faraday.new('https://od-api.oxforddictionaries.com:443/api/v1/')
    response = conn.get('entries/en/mindfulness/sentences') do |req|
      # req.url 'https://od-api.oxforddictionaries.com/api/v1/'
      req.headers['app_id'] = ENV['app_id']
      req.headers['app_key'] = ENV['app_key']
    end
     response_data = JSON.parse(response.body)

     #Refactor to decorator
      region =  response_data['results'].first["lexicalEntries"].first["sentences"].first["regions"] #this gives me N.America
      @word = response_data['results'].first['id']
      sentance =  response_data['results'].first["lexicalEntries"].first["sentences"].first["text"] #this gives me the first sentence

      data = response_data['results'].first["lexicalEntries"].first["sentences"]

      results = data.find_all do |data|
        if data['regions'] == ["North American"]
          @region = data['regions'].join
          @sentance = data['text']
        end
      end

      if response.status == 404
        flash[:error] = "This is not a valid word"
        redirect_to root_path
      else
        flash[:success] = "Examples for using '#{@word}'"
      end
  end
end
