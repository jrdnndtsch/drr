class Profile < ActiveRecord::Base
	PROVINCES = ['Ontario', 'Quebec', 'British Columbia', 'Alberta', 'Manitoba', 'Saskatchewan', 'Nova Scotia', 'New Brunswick', 'NewfoundLand & Labrador', 'Prince Edward Island', 'Northwest Territories', 'Yukon', 'Nunavut']
	RETAILERS = ['Sephora', 'Shoppers Drug Mart']
	belongs_to :user
end