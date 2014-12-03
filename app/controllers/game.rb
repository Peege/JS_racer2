enable :sessions

get '/games' do
  current_game = Game.find(session[:game_id])
  @player1 = current_game.players.first.username
  @player2 = current_game.players[1].username
  erb :play
end

post '/games' do
  new_game = Game.create
  player1 = params[:player1]
  player2 = params[:player2]

  session[:game_id] = new_game.id


  @player1 = Player.find_or_create_by_username(id: player1)
  @player2 = Player.find_or_create_by_username(id: player2)

  new_game.players << @player1
  #update doesn't work because this is not ActiveRecord
  Gaming.last.update_attributes(player_number: 1)
  new_game.players << @player2
  Gaming.last.update_attributes(player_number: 2)
  redirect to('/games')
end

post /won do

  erb :result

end

