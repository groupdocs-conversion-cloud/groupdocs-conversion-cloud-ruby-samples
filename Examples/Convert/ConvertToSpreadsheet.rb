# Import modules
require 'groupdocs_conversion_cloud'
require './Common.rb'

# This example demonstrates how to convert word processing document into spreadsheet document
class ConvertToSpreadsheet
    
    def self.Run()
        # Create necessary API instances
        apiInstance = GroupDocsConversionCloud::ConvertApi.from_keys($app_sid, $app_key)
        
        # Prepare convert settings
        settings = GroupDocsConversionCloud::ConvertSettings.new
        settings.file_path = "WordProcessing/four-pages.docx"
        settings.format = "xlsx"
        convertOptions = GroupDocsConversionCloud::SpreadsheetConvertOptions.new
        convertOptions.from_page = 2
        convertOptions.pages_count = 1
        convertOptions.zoom = 150
        settings.convert_options = convertOptions
        settings.output_path = "converted"

        # Convert
        result = apiInstance.convert_document(GroupDocsConversionCloud::ConvertDocumentRequest.new(settings))

        puts("Document converted: " + result[0].url)
    end

end