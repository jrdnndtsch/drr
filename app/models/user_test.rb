class UserTest < ActiveRecord::Base
  belongs_to :user
  belongs_to :test

  def self.export_csv
    CSV.generate do |csv|
    	column_names << ['store_number','first_name', 'last_name', 'address', 'city', 'provice', 'postal_code', 'country' ]
    	column_names << ['name']
    	column_names << ['title']
    	column_names.flatten!
	    csv << column_names
	    all.each do |item|
	      profile = User.find(item.user_id).profile
	      all_attributes = item.attributes.merge(profile.attributes)
	      test = Test.find(item.test_id)
	      all_attributes = all_attributes.merge(test.attributes)
	      learning_module = test.learning_module
	      all_attributes = all_attributes.merge(learning_module.attributes)
	      csv << all_attributes.values_at(*column_names)
	    end
  	end
	end
end
