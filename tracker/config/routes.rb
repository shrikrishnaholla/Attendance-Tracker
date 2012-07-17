Tracker::Application.routes.draw do
  #get "interaction/interact_page"
  match "/Interaction/show" => "Interaction#show"

  root :to => "interaction#interact_page" 
  resources :Interaction
end
