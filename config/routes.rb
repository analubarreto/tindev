Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # resources cria todas as rotas necessárias(index, show, create, edit, update and destroy)
      resources :programming_languages
      # resources :programming_languages, except: %i[destroy]
    end
  end
end
