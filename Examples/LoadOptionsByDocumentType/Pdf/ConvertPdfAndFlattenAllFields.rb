# Import modules
require './Common.rb'

# This example demonstrates how to convert pdf document to word processing with advanced options
class ConvertPdfAndFlattenAllFields
    
    def self.Run()
        # Create necessary API instances
        apiInstance = GroupDocsConversionCloud::ConvertApi.from_config($config)
        
        # Prepare convert settings
        settings = GroupDocsConversionCloud::ConvertSettings.new
        settings.file_path = "Pdf/sample.pdf"
        settings.format = "docx"

        loadOptions = GroupDocsConversionCloud::PdfLoadOptions.new
        loadOptions.flatten_all_fields = true

        settings.load_options = loadOptions
        settings.output_path = "converted"

        # Convert
        result = apiInstance.convert_document(GroupDocsConversionCloud::ConvertDocumentRequest.new(settings))

        puts("Document converted: " + result[0].url)
    end

end
