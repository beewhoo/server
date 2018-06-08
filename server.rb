require 'sinatra'

#ROUTE = VERB + PATH

get '/' do
  redirect to('/home')
end

get '/gallery' do
  redirect to('/portfolio')
end



get '/home' do
  erb :index
end

get '/portfolio' do
  erb :gallery
end

get '/about_me' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['dogs', 'art', 'music', 'travel', 'soccer']
  erb :bio
end

get '/favourites' do
  @fav_links = ['www.espn.com', 'www.cnn.com', 'www.facebook.com', 'www.mashable.com', 'www.nba.com']

  erb :links
end
