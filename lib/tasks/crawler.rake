namespace :crawler do

  desc "Updates catalogue pages index"
  task :index_catalogue => :environment do
    job = PageIndexingJob.new
    job.run
  end

  desc "Updates product pages index"
  task :index_products => :environment do
    job = ProductExtractionJob.new
    job.run
  end

  desc "Detect new products and add them to the database"
  task :add_new_products => :environment do
    job = AddNewProductsJob.new
    job.run
  end

end