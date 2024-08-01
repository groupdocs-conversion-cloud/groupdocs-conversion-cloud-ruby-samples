# Import modules
require './Common.rb'

# This example demonstrates how to convert document without using cloud storage
class ConvertToPdfDirect
    
    def self.Run()
        # Create necessary API instances
        apiInstance = GroupDocsConversionCloud::ConvertApi.from_config($config)
        
        # Prepare request
        file = File.open("Resources\\WordProcessing\\four-pages.docx", "r")
        request = GroupDocsConversionCloud::ConvertDocumentDirectRequest.new("pdf", file)

        # Convert
        result = apiInstance.convert_document_direct(request)

        puts("Document converted: " + (result.length).to_s)
    end

end