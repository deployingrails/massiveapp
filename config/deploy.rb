require 'bundler/capistrano'
set :application, "massiveapp"

set :whenever_command, "bundle exec whenever"
require "whenever/capistrano"

set :scm, :git
set :repository, "git://github.com/deployingrails/massiveapp.git"

server "localhost", :web, :app, :db, :primary => true

ssh_options[:port] = 2222
ssh_options[:keys] = "~/.vagrant.d/insecure_private_key"

set :user, "vagrant"
set :group, "vagrant"
set :deploy_to, "/var/massiveapp"
set :use_sudo, false

set :deploy_via, :copy
set :copy_strategy, :export

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  desc "Restart the application"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

before "deploy:assets:precompile", "deploy:copy_in_database_yml"

#require 'yaml' 
#role(:redis) { YAML.load(File.read("config/servers.yml"))["servers"]["redis"] }
#task :rewrite_aof, :roles => :redis do |t|
#  run "redis-cli bgrewriteaof"
#end
#
desc "Download the production log file"
task :get_dir do |t|
  get "#{current_path}/log/", "#{Time.now}.log"
end

desc "Download the production log file"
task :get_log do |t|
  get "#{current_path}/log/production.log", "#{Time.now.strftime("%Y%m%d%H%M")}.production.log"
end
