Rails.application.routes.draw do
  resources :candidates do
  #預設url網址就是candidates, 加上, path: "vote" http://localhost:3000/vote 也會到一樣的畫面
  #預設會有8條路徑, 加上 ,only: [:index, :update, :destroy] 的話 就只會有index, update, destroy這3條
  ##
  #建立新的路徑給Vote
    member do
      post :vote
    end
  end
end


##也可以在resources裡面加入member或是collection
##member會對candidate.id做路徑
##collection會對candidates做路徑


# collection do
#   post :vote
# end