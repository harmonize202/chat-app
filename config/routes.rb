Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  # ルートバスでmessageコントローラーのindexアクション起動
  root to: "messages#index"
end
