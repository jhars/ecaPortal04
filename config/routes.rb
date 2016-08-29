Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/update_schools', as: 'update_schools'
  get 'welcome/show'
end
