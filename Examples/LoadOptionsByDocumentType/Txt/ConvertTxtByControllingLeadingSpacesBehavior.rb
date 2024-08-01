# Import modules
require './Common.rb'

# This example demonstrates how to convert a txt document to pdf with advanced options
class ConvertTxtByControllingLeadingSpacesBehavior
    
    def self.Run()
        # Create necessary API instances
        apiInstance = GroupDocsConversionCloud::ConvertApi.from_config($config)
        
        # Prepare convert settings
        settings = GroupDocsConversionCloud::ConvertSettings.new
        settings.file_path = "Text/sample.txt"
        settings.format = "pdf"

        loadOptions = GroupDocsConversionCloud::TxtLoadOptions.new
        loadOptions.leading_spaces_options = "ConvertToIndent"
        loadOptions.detect_numbering_with_whitespaces = true

        settings.load_options = loadOptions
        settings.output_path = "converted"

        # Convert
        result = apiInstance.convert_document(GroupDocsConversionCloud::ConvertDocumentRequest.new(settings))

        puts("Document converted: " + result[0].url)
    end

end
