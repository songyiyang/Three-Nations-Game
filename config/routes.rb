Sanguosha::Application.routes.draw do
  devise_for :users
  root to: 'main_pages#home'
end
