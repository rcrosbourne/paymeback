module ApplicationHelper
	#load the application_metadata.yml file
	def application_name
		APPLICATION_METADATA["name"]
	end
	def application_authors
		APPLICATION_METADATA["authors"]
	end
	def company_name	
		APPLICATION_METADATA["company"]		
	end
end
