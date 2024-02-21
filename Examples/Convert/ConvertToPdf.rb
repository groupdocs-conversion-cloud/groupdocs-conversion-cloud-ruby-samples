# Import modules
require 'groupdocs_conversion_cloud'
require './Common.rb'

# This example demonstrates how to convert word processing document into pdf document
class ConvertToPdf
    
    def self.Run()
        # Create necessary API instances
        apiInstance = GroupDocsConversionCloud::ConvertApi.from_config($config)
        
        # Prepare convert settings
        settings = GroupDocsConversionCloud::ConvertSettings.new
        settings.file_path = "WordProcessing/password-protected.docx"
        settings.format = "pdf"

        loadOptions = GroupDocsConversionCloud::DocxLoadOptions.new
        loadOptions.password = "password"
        convertOptions = GroupDocsConversionCloud::PdfConvertOptions.new
        convertOptions.center_window = true
        convertOptions.compress_images = false
        convertOptions.display_doc_title = true
        convertOptions.dpi = 1024
        convertOptions.fit_window = false
        convertOptions.from_page = 1
        convertOptions.grayscale = false
        convertOptions.image_quality = 100
        convertOptions.linearize = false
        convertOptions.margin_top = 5
        convertOptions.margin_left = 5
        convertOptions.password = "password"
        convertOptions.unembed_fonts = true
        convertOptions.remove_unused_streams = true
        convertOptions.remove_unused_objects = true
        convertOptions.remove_pdfa_compliance = false

        settings.load_options = loadOptions
        settings.convert_options = convertOptions
        settings.output_path = "converted"

        # Convert
        result = apiInstance.convert_document(GroupDocsConversionCloud::ConvertDocumentRequest.new(settings))

        puts("Document converted: " + result[0].url)
    end

end