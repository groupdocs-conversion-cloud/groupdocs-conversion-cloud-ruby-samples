# Import modules
require './Common.rb'

# This example demonstrates how to convert document without using cloud storage
# and using options
class ConvertToPdfDirectOptions
    
    def self.Run()
        # Create necessary API instances
        apiInstance = GroupDocsConversionCloud::ConvertApi.from_config($config)
        
        # Prepare request
        file = File.open("Resources\\WordProcessing\\password-protected.docx", "r")
        load_options = GroupDocsConversionCloud::WordProcessingLoadOptions.new
        load_options.format = "docx"
        load_options.password = "password"
        request = GroupDocsConversionCloud::ConvertDocumentDirectRequest.new("pdf", file, nil, nil, load_options)

        # Convert
        result = apiInstance.convert_document_direct(request)

        puts("Document converted: " + (result.length).to_s)
    end

end