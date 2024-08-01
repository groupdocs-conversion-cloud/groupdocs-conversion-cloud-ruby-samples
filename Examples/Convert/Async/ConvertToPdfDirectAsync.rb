# Import modules
require './Common.rb'

# This example demonstrates how to convert document without using cloud storage asyncronously
class ConvertToPdfDirectAsync
    
    def self.Run()
        # Create necessary API instances
        apiInstance = GroupDocsConversionCloud::AsyncApi.from_config($config)
        
        # Prepare request
        file = File.open("Resources\\WordProcessing\\four-pages.docx", "r")
        request = GroupDocsConversionCloud::StartConvertRequest.new("pdf", file)

        # Convert
        operation_id = apiInstance.start_convert(request)
        operation_id = operation_id.delete_prefix('"').delete_suffix('"')      
        puts("Operation ID: " + operation_id)
        while true
            sleep(1)
            result = apiInstance.get_operation_status(GroupDocsConversionCloud::GetOperationStatusRequest.new(operation_id))
            if result.status == "Finished"
                response = apiInstance.get_operation_result(GroupDocsConversionCloud::GetOperationResultRequest.new(operation_id))
                puts("Document converted: " + (response.length).to_s)
                break
            elsif result.status == "Failed"
                puts("Operation failed: " + result.error)
                break
            else
                puts("Operation status: " + result.status)
            end
        end
    end
end
