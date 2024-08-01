# Import modules
require './Common.rb'

# This example demonstrates how to convert specific pages from word processing document into pdf document
class ConvertSpecificPages
    
    def self.Run()
        # Create necessary API instances
        apiInstance = GroupDocsConversionCloud::ConvertApi.from_config($config)
        
        # Prepare convert settings
        settings = GroupDocsConversionCloud::ConvertSettings.new
        settings.file_path = "WordProcessing/four-pages.docx"
        settings.format = "pdf"
        convertOptions = GroupDocsConversionCloud::PdfConvertOptions.new
        convertOptions.pages = [1, 3]

        settings.convert_options = convertOptions
        settings.output_path = "converted/two-pages.pdf"

        # Convert
        result = apiInstance.convert_document(GroupDocsConversionCloud::ConvertDocumentRequest.new(settings))

        puts("Document converted: " + result[0].url)
    end

end