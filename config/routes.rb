Rails.application.routes.draw do
  resources :cerca_productes
  get 'productes/cerca_productes'
  get 'dapcons', to: 'dapcons#index', :as => :dapcons
  get 'dapcons/que_son'
  get 'dapcons/utilitat'
  get 'dapcons/organitzacions_afiliades'
  get 'dapcons/productes_registrats'
  get 'dapcons/empreses_dapcons'
  get 'dapcons/documents_oficials'
  get 'dapcons/administradors'
  get 'dapcons/consell_assessor'
  get 'dapcons/panells_sectorials'
  get 'dapcons/eco_platform'
  get 'dapcons/entitats_colaboradores'
  get 'dapcons/verificadors'
  get 'dapcons/afiliacio'
  get 'dapcons/registrar_producte'
  get 'dapcons/contacte'
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
  get 'productes/llistat'

  resources :videos
  resources :productes
  resources :cas_practics
  resources :noticies
  devise_for :users
  get 'home/index'
  root :to => "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
