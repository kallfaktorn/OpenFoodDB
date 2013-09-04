set :application, "openfooddb"
set :repository,  "https://github.com/kallfaktorn/OpenFoodDB.git"

# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :scm, 'git'

set :user, 'kallfaktorn'
set :branch, "master"

set :git_shallow_clone, 1
set :use_sudo, false
set :deploy_to, "OpenFoodDB"
set :deploy_via, :remote_cache
set :keep_releases, 1
set :rails_env, "production"
set :migrate_target, :latest

default_run_options[:pty] = true
ssh_options[:forward_agent] = true


role :web, "www.openfooddb.com"                          # Your HTTP server, Apache/etc
role :app, "www.openfooddb.com"                          # This may be the same as your `Web` server
role :db,  "www.openfooddb.com", :primary => true        # This is where Rails migrations will run

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

 namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
 end
 
 namespace :deploy do
   desc "Recreate symlink"
   task :resymlink, :roles => :app do
     run "rm -f #{current_path} && ln -s #{release_path} #{current_path}"
   end
 end