class Company < ActiveRecord::Base
  def self.import(file)
  CSV.foreach(file.path, headers:true) do |row|
    Company.create! row.to_hash
  end
 end
def self.to_cv
  CSV.generate do |csv|
    csv << column_names
    all.each do |company|
      csv << company.attributes.values_at(*column_names)
    end
  end
end

end
