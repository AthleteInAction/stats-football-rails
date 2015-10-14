Rails.application.routes.draw do

  # API
  namespace :api do
    namespace :v1 do

      # API INSERT
			resources :penalty,path: 'penaltys'
			resources :play,path: 'plays'
			resources :sequence,path: 'sequences'
			resources :game,path: 'games'
			resources :player,path: 'players'
			resources :team,path: 'teams'

			resources :summary
			resources :stats

    end
  end

  resources :team

end