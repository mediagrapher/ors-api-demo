# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'ors-api-demo'
set :repo_url, 'git@github.com:unepwcmc/ors-api-demo.git'

set :branch, 'master'

set :deploy_user, 'wcmc'
set :deploy_to, "/home/#{fetch(:deploy_user)}/#{fetch(:application)}"

set :backup_path, "/home/#{fetch(:deploy_user)}/Backup"

set :rvm_type, :user
set :rvm_ruby_version, '2.2.3'

set :pty, true


set :ssh_options, {
  forward_agent: true,
}

set :linked_files, %w{config/database.yml config/secrets.yml} 

set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

set :keep_releases, 5

set :passenger_restart_with_touch, false
