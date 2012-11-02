module RakeUi
  class Engine < Rails::Engine
  	config.mount_at = '/'

    # isolate_namespace RakeUi
  end
end
