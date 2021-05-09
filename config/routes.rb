Rails.application.routes.draw do
  root to: "cards#index"

  get "/shuffled", to: "cards#shuffle"
end
