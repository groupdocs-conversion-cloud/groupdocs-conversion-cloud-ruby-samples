# Import modules
require './Common.rb'

# This example demonstrates how to convert word processing document into html document
class ConvertToHtml
    
    def self.Run()
        # Create necessary API instances
        apiInstance = GroupDocsConversionCloud::ConvertApi.from_config($config)
        
        # Prepare convert settings
        settings = GroupDocsConversionCloud::ConvertSettings.new
        settings.file_path = "WordProcessing/four-pages.docx"
        settings.format = "html"
        convertOptions = GroupDocsConversionCloud::WebConvertOptions.new
        convertOptions.from_page = 1
        convertOptions.pages_count = 1
        convertOptions.fixed_layout = true
        convertOptions.fixed_layout_show_borders = true
        settings.convert_options = convertOptions
        settings.output_path = "converted"

        # Convert
        result = apiInstance.convert_document(GroupDocsConversionCloud::ConvertDocumentRequest.new(settings))

        puts("Document converted: " + result[0].url)
    end

end