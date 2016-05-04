Rails.application.routes.draw do
  root 'landings#index'
  get 'landings/index'

  devise_for :users, controllers: {registrations: "users/registrations", sessions: "users/sessions", passwords: "users/passwords"}, skip: [:sessions, :registrations]
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
  resources :food_ranks, except: [:index, :create, :update] do
    post :update_row_order, on: :collection
  end

  get    "survey_category_selection" => "pages#survey_category_selection"
  get    "survey_food_selection"     => "pages#survey_food_selection"
  get    "vas_questions/:order"      => "vas_questions#vas_questions", as: :vas_questions
  patch  "vas_questions/:order"      => "vas_answers#update", as: :update_answers
  post   "vas_questions/:order"      => "answers#create", as: :answers
  get    "demographics"              => "demographics#demographics"
  post   "demographics"              => "demographics#create"
  get    "thank_you"                 => "demographics#thank_you"
  post   "food_ranks"                => "food_ranks#create",       as: :create_food_rank
  get    "food_ranks"                => "food_ranks#food_ranking", as: :food_ranks
  patch  "food_ranks"                => "food_ranks#update_rank",  as: :update_rank
  get    "results"                   => "answers#show"
  get    "users"                     => "answers#users"
  get    "demographic_info"          => "answers#demographic_info"
  get    "info"                      => "pages#info"
end
