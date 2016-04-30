namespace :crawler do

  desc "Updates catalogue pages index"
  task :index_catalogues => :environment do
    job = PageIndexingJob.new
    t1 = Time.now
    job.run
    t2 = Time.new
    tt = (t2-t1).round(2)
    puts "Time Taken: #{tt} seconds"
  end

  desc "Updates product pages index"
  task :index_products => :environment do
    job = ProductExtractionJob.new
    t1 = Time.now
    job.run
    t2 = Time.new
    tt = (t2-t1).round(2)
    puts "Time Taken: #{tt} seconds"
  end

  desc "Detect new products and add them to the database"
  task :add_new_products => :environment do
    job = AddNewProductsJob.new
    t1 = Time.now
    job.run
    t2 = Time.new
    tt = (t2-t1).round(2)
    puts "Time Taken: #{tt} seconds"
  end

end