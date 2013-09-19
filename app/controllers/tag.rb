get '/tag/:id' do
  @tag = Tag.find(params[:id])
  erb :show_tag
end 
