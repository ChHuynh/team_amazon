get "/users" do
  erb :'/users/index'
end

get "/users/new" do

  erb :"/users/new"
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    login(@user)
    redirect "/users/#{@user.id}"
  else
    erb :"/users/new"
  end
end

get "/users/login"do
  erb :"users/login"
end

post "/users/login" do
  @user = User.find_by(username: params[:user][:username])
  @password_attempt = params[:user][:password]
  if @user.authenticate(@password_attempt)
    login(@user)
    redirect "/users/#{@user.id}"
  else
    erb :"users/login"
  end
end

get "/users/logout" do
logout
redirect "/decks"
end

get "/users/:id" do
  if current_user
    @decks = Deck.all
    erb :"users/show"
  else
    redirect "/decks"
  end
end





