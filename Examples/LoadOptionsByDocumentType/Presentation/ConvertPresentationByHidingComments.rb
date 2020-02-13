# Import modules
require 'groupdocs_conversion_cloud'
require './Common.rb'

# This example demonstrates how to convert presentation document into pdf document
class ConvertPresentationByHidingComments
    
    def self.Run()
        # Create necessary API instances
        apiInstance = GroupDocsConversionCloud::ConvertApi.from_keys($app_sid, $app_key)
        
        # Prepare convert settings
        settings = GroupDocsConversionCloud::ConvertSettings.new
        settings.file_path = "Presentation/with_notes.pptx"
        settings.format = "pdf"

        loadOptions = GroupDocsConversionCloud::PresentationLoadOptions.new
        loadOptions.hide_comments = true

        settings.load_options = loadOptions
        settings.output_path = "converted"

        # Convert
        result = apiInstance.convert_document(GroupDocsConversionCloud::ConvertDocumentRequest.new(settings))

        puts("Document converted: " + result[0].url)
    end

end
