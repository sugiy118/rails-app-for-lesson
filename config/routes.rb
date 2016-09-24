Rails.application.routes.draw do

  resources :tweets
  # deviseが自動生成するルーティング
  devise_for :users
  # ツイート一覧画面へのルーティングを定義

  get 'tweets/new' => 'tweets#new'

  tweet '/tweets' => 'tweets#create'

  get'/tweets' => 'tweets#index'

  get '/tweets/:id' => 'tweets#show', as: 'tweet'

  get '/tweets/:id/edit' => 'tweets#edit', as: 'edit_tweet'

  patch '/tweets/:id' => 'tweets#update', as: 'update_tweet'
# ---------------------------------------------
# 発展課題
  # resourcesを制限する場合
    # resources :users, only: [:index, :show] do
    # end


  #お気に入り機能をツイートに紐付ける場合  
    # resources :tweets do
      # resource :favorites
    # end
# ---------------------------------------------


# ルートパス　でアクセスした時にツイート一覧へのルーティングを定義


end
