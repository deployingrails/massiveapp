namespace :deploy do
  desc "Copy the database.yml file into current/"
  task :copy_in_database_yml do
    run "cp #{shared_path}/config/database.yml #{current_path}/config/"
  end
end