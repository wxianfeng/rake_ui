RakeUi::Engine.routes.draw do
  root :to  => "rake_tasks#index"
  mount_at = RakeUi::Engine.config.mount_at

  match mount_at => 'rake_ui/rake_tasks#index'

  resources :rake_tasks
end
