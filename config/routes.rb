Rails.application.routes.draw do
  get 'landings/index'

  devise_for :users, controllers: {registrations: "users/registrations", sessions: "users/sessions", passwords: "users/passwords"}, skip: [:sessions, :registrations]
  root 'landings#index'
  devise_scope :user do
    get    "login"   => "users/sessions#new",         as: :new_user_session
    post   "login"   => "users/sessions#create",      as: :user_session
    delete "signout" => "users/sessions#destroy",     as: :destroy_user_session

    get    "signup"  => "users/registrations#new",    as: :new_user_registration
    post   "signup"  => "users/registrations#create", as: :user_registration
    put    "signup"  => "users/registrations#update", as: :update_user_registration
    get    "account" => "users/registrations#edit",   as: :edit_user_registration
  end

  resources :categories
  resources :foods
  resources :surveys

  get "survey_category_selection" => "pages#survey_category_selection"
  get "survey_food_selection" => "pages#survey_food_selection"


  resources :food_ranks do
    post :update_row_order, on: :collection
  end

  get "food_ranking" => "food_ranks#food_ranking", as: :food_ranking
  patch "food_ranking" => "food_ranks#food_ranking"

end
