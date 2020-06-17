require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end 
  
  post '/piglatinize' do 
    text_from_user = params[:user_text]
    @output_text = PigLatinizer.new.latinizer(text_from_user)
    @output_text
  end 
end