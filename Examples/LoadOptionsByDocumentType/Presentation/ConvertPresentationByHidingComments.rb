# Import modules
require './Common.rb'

# This example demonstrates how to convert presentation document into pdf document
class ConvertPresentationByHidingComments
    
    def self.Run()
        # Create necessary API instances
        apiInstance = GroupDocsConversionCloud::ConvertApi.from_config($config)
        
        # Prepare convert settings
        settings = GroupDocsConversionCloud::ConvertSettings.new
        settings.file_path = "Presentation/with_notes.pptx"
        settings.format = "pdf"

        loadOptions = GroupDocsConversionCloud::PresentationLoadOptions.new
        loadOptions.comments_position = "None"

        settings.load_options = loadOptions
        settings.output_path = "converted"

        # Convert
        result = apiInstance.convert_document(GroupDocsConversionCloud::ConvertDocumentRequest.new(settings))

        puts("Document converted: " + result[0].url)
    end

end
