# Import modules
require './Common.rb'

# This example demonstrates how to convert msg document into pdf document with original date
class ConvertEmailWithOriginalDate
    
    def self.Run()
        # Create necessary API instances
        apiInstance = GroupDocsConversionCloud::ConvertApi.from_config($config)
        
        # Prepare convert settings
        settings = GroupDocsConversionCloud::ConvertSettings.new
        settings.file_path = "Email/sample.msg"
        settings.format = "pdf"

        loadOptions = GroupDocsConversionCloud::EmailLoadOptions.new
        loadOptions.preserve_original_date = true

        settings.load_options = loadOptions
        settings.output_path = "converted"

        # Convert
        result = apiInstance.convert_document(GroupDocsConversionCloud::ConvertDocumentRequest.new(settings))

        puts("Document converted: " + result[0].url)
    end

end
