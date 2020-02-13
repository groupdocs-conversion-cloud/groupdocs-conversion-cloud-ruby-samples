# Import modules
require 'groupdocs_conversion_cloud'
require './Common.rb'

# This example demonstrates how to convert eml document into pdf document
class ConvertEmailWithAttachments
    
    def self.Run()
        # Create necessary API instances
        apiInstance = GroupDocsConversionCloud::ConvertApi.from_keys($app_sid, $app_key)
        
        # Prepare convert settings
        settings = GroupDocsConversionCloud::ConvertSettings.new
        settings.file_path = "Email/embedded-image-and-attachment.eml"
        settings.format = "pdf"

        loadOptions = GroupDocsConversionCloud::EmailLoadOptions.new
        loadOptions.convert_attachments = true

        settings.load_options = loadOptions
        settings.output_path = "converted"

        # Convert
        result = apiInstance.convert_document(GroupDocsConversionCloud::ConvertDocumentRequest.new(settings))

        puts("Document converted: " + result[0].url)
    end

end
