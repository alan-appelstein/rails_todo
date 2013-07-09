TodoList::Application.routes.draw do
  root :to => 'welcome#index'
  # same as get '/' => 'welcome#index'
  # goes to http://localhost:3000/


   get '/todos'          => 'todos#index'
   get '/todos/new'      => 'todos#new'
   post '/todos'         => 'todos#create'
   get '/todos/:id'      => 'todos#show'
   get '/todos/:id/edit' => 'todos#edit'
   put '/todos/:id'      => 'todos#update'
   delete '/todos/:id'   => 'todos#destroy'
end



