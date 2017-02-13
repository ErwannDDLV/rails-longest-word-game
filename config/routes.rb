Rails.application.routes.draw do
  # get 'game' => 'boggles#game', as: :game
  root to: 'boggles#game'
  get 'score' => 'boggles#score', as: :score
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
