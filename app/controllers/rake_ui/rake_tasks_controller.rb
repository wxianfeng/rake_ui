module RakeUi
  class RakeTasksController < ApplicationController
    respond_to :js
    before_filter :load_tasks
    
    def index
      @rake_task = RakeUi::RakeTask.new
    end
    
    def create
      @rake_task = RakeUi::RakeTask.new(params[:rake_task])
      @rake_task.command = @tasks.select {|task| task['id'] == @rake_task.id }.pop['cmd']
      Kernel.system("RAILS_ENV=#{Rails.env} #{@rake_task.command} #{@rake_task.arguments} >> #{Rails.root}/log/rake.log  2>&1 &")
      respond_to do |format|
        format.js {}
      end
    end
    
    private
    
    def load_tasks
      @tasks = JSON.parse(RAKE_TASKS)
      arr = YAML.load(File.read("#{Rails.root}/config/tasks.yml"))
      @tasks = @tasks.select { |task| arr.index(task['cmd']) }
      @host = RakeUiCfg['host']
    end
  end
end
