class AdminController < ApplicationController
	before_filter :authorize_admin
	before_action :ensure_profile
	layout 'admin'
	def show
	end
end
