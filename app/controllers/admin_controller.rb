class AdminController < ApplicationController

	layout 'admin'
	before_action :authenticate_user!
	# before_action :only_admin!

	private

	def only_admin!
		redirect_to admin_authenticated_root_path
	end
end
