# Import modules
require './Common.rb'

# This example demonstrates how to convert cad document into pdf document
class ConvertCadAndSpecifyLoadOptions
    
    def self.Run()
        # Create necessary API instances
        apiInstance = GroupDocsConversionCloud::ConvertApi.from_config($config)
        
        # Prepare convert settings
        settings = GroupDocsConversionCloud::ConvertSettings.new
        settings.file_path = "Cad/Sample.dwg"
        settings.format = "pdf"

        loadOptions = GroupDocsConversionCloud::CadLoadOptions.new
        loadOptions.format = "dwg"

        settings.load_options = loadOptions
        settings.output_path = "converted"

        # Convert
        result = apiInstance.convert_document(GroupDocsConversionCloud::ConvertDocumentRequest.new(settings))

        puts("Document converted: " + result[0].url)
    end

end
