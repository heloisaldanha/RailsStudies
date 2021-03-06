Rails.application.routes.draw do
# get 'sessions/new'  # pode tirar esse get
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htm

  root to: "static_pages#index"  # colocar o nome do controller # nome do método

  # para visuzlizar as rotas disponíveis na aplicação : rails routes

  get 'sobre', to: 'static_pages#sobre'
  get 'contato', to: 'static_pages#contato'  # ele vai pegar o método contato e mandar pro arquivo contato que está dentro da pasta static_pages
  get 'novo_contato', to: 'static_pages#novo_contato'
  get 'entrar', to: 'sessions#new'
  post 'entrar', to: 'sessions#create'
  delete 'sair', to: 'sessions#destroy'
  # para visuzlizar as rotas disponíveis na aplicação : rails routes


  # permite que você rapidamente declare todas as rotas comuns para um controller.
  # uma chamada única para resources pode declarar todas as rotas necessárias para as actions index, show, new, edit, create, update e destroy.
  resources :contacts
  resources :users, only: [:new, :create, :show, :edit, :update]  # como é a rota de cadastro, só pode ter acesso à rota new e create - e pra mostrar = :show
  # não tem a rota de destroy pois não fiz pra deletar usuário
end
