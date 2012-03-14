namespace :deploy do
  desc "Make sure the user really wants to deploy"
  task :confirm do
    if Capistrano::CLI.ui.ask("Are you sure you want to deploy?") == "yes"
      puts "OK, here goes!"
    else
      puts "Exiting"
      exit
    end
  end
end

