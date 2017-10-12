Rails.application.routes.draw do
  resources :foto_casos
  resources :photos
  get 'temes_clau/index'
  get 'temes_clau/marc_conceptual'
  get 'temes_clau/materials'
  get 'temes_clau/energia_passius'
  get 'temes_clau/energia_actius'
  get 'temes_clau/energia_renovables'
  get 'temes_clau/aigua'
  get 'temes_clau/residus'
  get 'temes_clau/salut'
  get 'videos/llistat'
  get 'cas_practics/llistat'

  resources :videos
  resources :productes
  resources :cas_practics
  resources :noticies
  devise_for :users
  get 'home/index'
  root :to => "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
