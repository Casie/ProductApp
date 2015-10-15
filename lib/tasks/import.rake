require 'csv'

namespace :csv do

  desc "Import CSV Data"
  task :import => :environment do

    csv_file_path = 'db/wiserseeddata.csv'

    CSV.foreach(csv_file_path) do |row|
      Product.create!({
        :name => row[0],
        :sku => row[1],
        :category => row[2],        
      })
      puts "Row added!"
    end
  end
end