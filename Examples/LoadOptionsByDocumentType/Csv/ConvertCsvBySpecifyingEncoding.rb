# Import modules
require './Common.rb'

# This example demonstrates how to convert csv document into pdf document
class ConvertCsvBySpecifyingEncoding
    
    def self.Run()
        # Create necessary API instances
        apiInstance = GroupDocsConversionCloud::ConvertApi.from_config($config)
        
        # Prepare convert settings
        settings = GroupDocsConversionCloud::ConvertSettings.new
        settings.file_path = "Spreadsheet/sample.csv"
        settings.format = "pdf"

        loadOptions = GroupDocsConversionCloud::CsvLoadOptions.new
        loadOptions.encoding = "shift_jis" 

        settings.load_options = loadOptions
        settings.output_path = "converted"

        # Convert
        result = apiInstance.convert_document(GroupDocsConversionCloud::ConvertDocumentRequest.new(settings))

        puts("Document converted: " + result[0].url)
    end

end
