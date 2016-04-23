namespace :crawler do
  task :index_catalogue => :environment do
    mega = MegaProductExtractor.new
    mega.getProducts("http://www.mega.pk/mobiles/").each do |product|
      puts sprintf("%s\t%s\t%s", product[:price], product[:name], product[:url])
    end
  end
end