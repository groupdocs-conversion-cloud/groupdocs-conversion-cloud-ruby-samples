# Import modules
require './Common.rb'

# This example demonstrates how to convert spreadsheet document into pdf with advanced options
class ConvertSpreadsheetWithHiddenSheetsIncluded
    
    def self.Run()
        # Create necessary API instances
        apiInstance = GroupDocsConversionCloud::ConvertApi.from_config($config)
        
        # Prepare convert settings
        settings = GroupDocsConversionCloud::ConvertSettings.new
        settings.file_path = "Spreadsheet/with_hidden_sheet.xlsx"
        settings.format = "pdf"

        loadOptions = GroupDocsConversionCloud::SpreadsheetLoadOptions.new
        loadOptions.show_hidden_sheets = true
        loadOptions.one_page_per_sheet = true

        settings.load_options = loadOptions
        settings.output_path = "converted"

        # Convert
        result = apiInstance.convert_document(GroupDocsConversionCloud::ConvertDocumentRequest.new(settings))

        puts("Document converted: " + result[0].url)
    end

end
