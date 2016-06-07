class Profile < ActiveRecord::Base
	PROVINCES = ['Ontario', 'Quebec', 'British Columbia', 'Alberta', 'Manitoba', 'Saskatchewan', 'Nova Scotia', 'New Brunswick', 'NewfoundLand & Labrador', 'Prince Edward Island', 'Northwest Territories', 'Yukon', 'Nunavut']
	RETAILERS = ['Sephora', 'Shoppers Drug Mart']
	belongs_to :user

   def self.export_csv
     CSV.generate do |csv|
     	column_names << ['email']
     	column_names.flatten!
 	    csv << column_names
 	    all.each do |profile|
 	      user = User.find(profile.user_id)
 	      all_attributes = profile.attributes.merge(user.attributes)
 	      csv << all_attributes.values_at(*column_names)
 	    end
   	end
 	end
end