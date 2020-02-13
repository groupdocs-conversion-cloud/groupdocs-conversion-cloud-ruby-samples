# Import modules
require 'groupdocs_conversion_cloud'
require './Common.rb'

# This example demonstrates how to convert csv document into pdf document
class ConvertCsvByConvertingDateTimeAndNumericData
    
    def self.Run()
        # Create necessary API instances
        apiInstance = GroupDocsConversionCloud::ConvertApi.from_keys($app_sid, $app_key)
        
        # Prepare convert settings
        settings = GroupDocsConversionCloud::ConvertSettings.new
        settings.file_path = "Spreadsheet/sample.csv"
        settings.format = "pdf"

        loadOptions = GroupDocsConversionCloud::CsvLoadOptions.new
        loadOptions.convert_date_time_data = true
        loadOptions.convert_numeric_data = true

        settings.load_options = loadOptions
        settings.output_path = "converted"

        # Convert
        result = apiInstance.convert_document(GroupDocsConversionCloud::ConvertDocumentRequest.new(settings))

        puts("Document converted: " + result[0].url)
    end

end
