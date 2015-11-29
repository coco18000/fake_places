Rails.application.routes.draw do
  root 'guests#top'

  resources :users, except: [:index]

  match '/sign_in', to: 'sessions#new', via: 'get'
  match '/sign_out', to: 'sessions#destroy', via: 'delete'

  match '/about', to: 'guests#about', via: 'get'

  resources :places, :events

end
