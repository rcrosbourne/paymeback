module ApplicationHelper
	#load the application_metadata.yml file
	def application_name
		APPLICATION_METADATA["name"]
	end
end
