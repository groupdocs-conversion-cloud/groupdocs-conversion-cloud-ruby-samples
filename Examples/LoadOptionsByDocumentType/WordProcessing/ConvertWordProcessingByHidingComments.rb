# Import modules
require './Common.rb'

# This example demonstrates how to convert a word-processing document to pdf with advanced options
class ConvertWordProcessingByHidingComments
    
    def self.Run()
        # Create necessary API instances
        apiInstance = GroupDocsConversionCloud::ConvertApi.from_config($config)
        
        # Prepare convert settings
        settings = GroupDocsConversionCloud::ConvertSettings.new
        settings.file_path = "WordProcessing/with_tracked_changes.docx"
        settings.format = "pdf"

        loadOptions = GroupDocsConversionCloud::WordProcessingLoadOptions.new
        loadOptions.comment_display_mode = "Hidden"

        settings.load_options = loadOptions
        settings.output_path = "converted"

        # Convert
        result = apiInstance.convert_document(GroupDocsConversionCloud::ConvertDocumentRequest.new(settings))

        puts("Document converted: " + result[0].url)
    end

end
