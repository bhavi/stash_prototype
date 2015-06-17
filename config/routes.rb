Rails.application.routes.draw do

  root to: 'static_pages#home'

  get 'static_pages/home'

  get 'static_pages/about'

  get 'static_pages/contact'

  mount StashEngine::Engine, at: "/stash_engine"
  APP_CONFIG.metadata_engines.each do |e|
  mount "#{e}::Engine".constantize, at: "/#{e}".underscore
  end

end
