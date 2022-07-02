Rails.application.routes.draw do
  resources :candidates
  #預設url網址就是candidates, 加上, path: "vote" http://localhost:3000/vote 也會到一樣的畫面
  #預設會有8條路徑, 加上 ,only: [:index, :update, :destroy] 的話 就只會有index, update, destroy這3條
end
