get '/' do
  @urls = Url.all
  erb :index
end

post '/urls' do
  p params
  @urls = Url.create(long_url: params[:long_url])

  redirect to('/')
end
