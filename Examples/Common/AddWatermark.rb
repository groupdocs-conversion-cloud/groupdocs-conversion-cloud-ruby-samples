# Import modules
require './Common.rb'

# This example demonstrates how to convert word processing document into pdf document with adding watermark
class AddWatermark
    
    def self.Run()
        # Create necessary API instances
        apiInstance = GroupDocsConversionCloud::ConvertApi.from_config($config)
        
        # Prepare convert settings
        watermark = GroupDocsConversionCloud::WatermarkOptions.new        
        watermark.text = "Sample watermark"
        watermark.color = "Red"
        watermark.width = 100
        watermark.height = 100
        watermark.background = true

        settings = GroupDocsConversionCloud::ConvertSettings.new
        settings.file_path = "WordProcessing/four-pages.docx"
        settings.format = "pdf"
        convertOptions = GroupDocsConversionCloud::PdfConvertOptions.new
        convertOptions.watermark_options = watermark

        settings.convert_options = convertOptions
        settings.output_path = "converted"

        # Convert
        result = apiInstance.convert_document(GroupDocsConversionCloud::ConvertDocumentRequest.new(settings))

        puts("Document converted: " + result[0].url)
    end

end