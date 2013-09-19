get '/show_post' do 
  @post = Post.all
  erb :show_post
end 


get '/post/:id/edit' do 
  @post = Post.find(params[:id])
  erb :edit_post
end 

post '/delete_post/:id' do 
  post = Post.find(params[:id])
  post.destroy
  redirect '/show_post'
end

post '/create_post' do 
  erb :create_post
end  

post '/new_post' do 
  puts 'hi'
  puts params[:input_tags]
  # tag = Post.input_tags(params[:tag]) 
  post = Post.create(title: params[:title], body: params[:body], author: params[:author], something: params[:hey])
  # post = Post.create(title: params[:title], body: params[:body], author: params[:author], input_tags: params[:input_tags])
  if post.valid?
    redirect '/show_post'
  else
    @doagain = "Please fill in information again" 
    erb :create_post
  end 
end 

post '/post/:id/edit' do 
  @post = Post.find(params[:id])
  if @post.update_attributes(title: params[:title], body: params[:body], author: params[:author])
    redirect '/show_post'
  else 
    @doagain = "Please fill in information again" 
    erb :edit_post
  end 
end 





 


