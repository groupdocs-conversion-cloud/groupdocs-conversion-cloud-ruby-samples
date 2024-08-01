# Import modules
require './Common.rb'

# This example demonstrates how to convert a txt document to pdf with advanced options
class ConvertTxtByControllingTrailingSpacesBehavior
    
    def self.Run()
        # Create necessary API instances
        apiInstance = GroupDocsConversionCloud::ConvertApi.from_config($config)
        
        # Prepare convert settings
        settings = GroupDocsConversionCloud::ConvertSettings.new
        settings.file_path = "Text/sample.txt"
        settings.format = "pdf"

        loadOptions = GroupDocsConversionCloud::TxtLoadOptions.new
        loadOptions.trailing_spaces_options = "Trim"

        settings.load_options = loadOptions
        settings.output_path = "converted"

        # Convert
        result = apiInstance.convert_document(GroupDocsConversionCloud::ConvertDocumentRequest.new(settings))

        puts("Document converted: " + result[0].url)
    end

end



    