Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htm

  root to: "static_pages#index"  # colocar o nome do controller # nome do método

  # para visuzlizar as rotas disponíveis na aplicação : rails routes

  get 'sobre', to: 'static_pages#sobre'
  get 'contato', to: 'static_pages#contato'  # ele vai pegar o método contato e mandar pro arquivo contato que está dentro da pasta static_pages
  get 'novo_contato', to: 'static_pages#novo_contato'
  # para visuzlizar as rotas disponíveis na aplicação : rails routes
end
