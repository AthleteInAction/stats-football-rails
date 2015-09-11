Rails.application.routes.draw do

  # API
  namespace :api do
    namespace :v1 do

      # API INSERT
			resources :play,path: 'plays'
			resources :sequence,path: 'sequences'
			resources :game,path: 'games'
			resources :player,path: 'players'
			resources :team,path: 'teams'

    end
  end

end