require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('./models/game')
also_reload('./models/*')

get '/:hand1/:hand2' do
  hand1 = params[:hand1]
  hand2 = params[:hand2]
  @outcome = Game.who_won(hand1, hand2)
	erb(:result)
end

get '/' do
  erb(:index)
end
