Rails.application.routes.draw do
  resources :send_resumes

  root to: "send_resumes#index"
end
