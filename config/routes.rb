Rails.application.routes.draw do
  get 'messages/index'
  # ルートバスでmessageコントローラーのindexアクション起動
  root to: "messages#index"
end
