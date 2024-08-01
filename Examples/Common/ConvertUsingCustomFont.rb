# Import modules
require './Common.rb'

# This example demonstrates how to convert document using custom font
class ConvertUsingCustomFont
    
    def self.Run()
        # Create necessary API instances
        apiInstance = GroupDocsConversionCloud::ConvertApi.from_config($config)
        
        # Prepare convert settings
        settings = GroupDocsConversionCloud::ConvertSettings.new
        settings.file_path = "Presentation/uses-custom-font.pptx"
        settings.format = "pdf"        
        settings.output_path = "converted"
        settings.fonts_path = "font/ttf"

        # Convert
        result = apiInstance.convert_document(GroupDocsConversionCloud::ConvertDocumentRequest.new(settings))

        puts("Document converted: " + result[0].url)
    end

end