# Import modules
require 'groupdocs_conversion_cloud'
require './Common.rb'

# This example demonstrates how to convert pdf document into word processing document
class ConvertToWordProcessing
    
    def self.Run()
        # Create necessary API instances
        apiInstance = GroupDocsConversionCloud::ConvertApi.from_config($config)
        
        # Prepare convert settings
        settings = GroupDocsConversionCloud::ConvertSettings.new
        settings.file_path = "Pdf/sample.pdf"
        settings.format = "docx"

        loadOptions = GroupDocsConversionCloud::PdfLoadOptions.new
        loadOptions.password = ""
        loadOptions.hide_pdf_annotations = true
        loadOptions.remove_embedded_files = false
        loadOptions.flatten_all_fields = true

        settings.load_options = loadOptions
        settings.convert_options = GroupDocsConversionCloud::DocxConvertOptions.new
        settings.output_path = "converted"

        # Convert
        result = apiInstance.convert_document(GroupDocsConversionCloud::ConvertDocumentRequest.new(settings))

        puts("Document converted: " + result[0].url)
    end

end