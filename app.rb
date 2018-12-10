require 'sinatra'

get '/' do
  "heeyyyyyyyy"
  # https://placekitten.com/200/287
end

get '/secret' do
  "Nice internet ya rascal"
end

get '/random-cat' do
  @name = ['Casper', 'Kaiser', 'Pip', 'Smudge', 'Mitzy', 'Penny'].shuffle.pop
  erb(:index)
end

get '/named-cat' do
  p params[:name]
  @name = params[:name]
  erb(:index)
end

get '/puppies' do
  "woof woof woof"
end
