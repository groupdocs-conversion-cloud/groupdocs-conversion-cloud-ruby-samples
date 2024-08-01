# Import modules
require './Common.rb'

# This example demonstrates how to convert msg document into pdf document
class ConvertEmailWithAlteringFieldsVisibility
    
    def self.Run()
        # Create necessary API instances
        apiInstance = GroupDocsConversionCloud::ConvertApi.from_config($config)
        
        # Prepare convert settings
        settings = GroupDocsConversionCloud::ConvertSettings.new
        settings.file_path = "Email/sample.msg"
        settings.format = "pdf"

        loadOptions = GroupDocsConversionCloud::EmailLoadOptions.new
        loadOptions.display_header = false
        loadOptions.display_from_email_address = false
        loadOptions.display_to_email_address = false
        loadOptions.display_cc_email_address = false
        loadOptions.display_bcc_email_address = false

        settings.load_options = loadOptions
        settings.output_path = "converted"

        # Convert
        result = apiInstance.convert_document(GroupDocsConversionCloud::ConvertDocumentRequest.new(settings))

        puts("Document converted: " + result[0].url)
    end

end
