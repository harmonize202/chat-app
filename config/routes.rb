Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  # ルートバスでmessageコントローラーのindexアクション起動
  root to: "messages#index"
  # ユーザー編集画面を作成する為
  resources :users, only: [:edit, :update]
end
