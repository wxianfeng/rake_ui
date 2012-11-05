# // node /data/projects/rake_ui/app/views/rake_ui/rake_tasks/server.js -host=192.168.10.107 -log=/data/projects/entos/log/rake.log
RakeUiCfg = YAML::load(File.open(File.expand_path("#{Rails.root}/config/rake_ui.yml",__FILE__)))

desc "Start the Node server"
task :start_node_server do
  Kernel.system "node #{RakeUi::Engine.root}/app/views/rake_ui/rake_tasks/server.js -host=#{RakeUiCfg['host']} -log=#{RakeUiCfg['log']}"
end

