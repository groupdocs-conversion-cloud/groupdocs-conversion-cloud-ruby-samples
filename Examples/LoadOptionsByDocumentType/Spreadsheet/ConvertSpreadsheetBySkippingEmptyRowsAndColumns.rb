# Import modules
require 'groupdocs_conversion_cloud'
require './Common.rb'

# This example demonstrates how to convert spreadsheet document into pdf with advanced options
class ConvertSpreadsheetBySkippingEmptyRowsAndColumns
    
    def self.Run()
        # Create necessary API instances
        apiInstance = GroupDocsConversionCloud::ConvertApi.from_config($config)
        
        # Prepare convert settings
        settings = GroupDocsConversionCloud::ConvertSettings.new
        settings.file_path = "Spreadsheet/sample.xlsx"
        settings.format = "pdf"

        loadOptions = GroupDocsConversionCloud::SpreadsheetLoadOptions.new
        loadOptions.skip_empty_rows_and_columns = true
        loadOptions.one_page_per_sheet = true

        settings.load_options = loadOptions
        settings.output_path = "converted"

        # Convert
        result = apiInstance.convert_document(GroupDocsConversionCloud::ConvertDocumentRequest.new(settings))

        puts("Document converted: " + result[0].url)
    end

end
