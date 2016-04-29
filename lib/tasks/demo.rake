namespace :demo do

  desc "Load demo data."
  task :db_reset => :environment do
    DatabaseCleaner.clean_with(:truncation)
    load "#{Rails.root}/db/demo_seeds.rb"
  end

end