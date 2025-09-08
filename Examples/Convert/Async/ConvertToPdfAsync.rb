# Import modules
require './Common.rb'

# This example demonstrates how to convert word processing document into pdf document asyncronously
class ConvertToPdfAsync
    
    def self.Run()
        # Create necessary API instances
        apiInstance = GroupDocsConversionCloud::AsyncApi.from_config($config)
        
        # Prepare convert settings
        settings = GroupDocsConversionCloud::ConvertSettings.new
        settings.file_path = "WordProcessing/password-protected.docx"
        settings.format = "pdf"

        loadOptions = GroupDocsConversionCloud::WordProcessingLoadOptions.new
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
        operation_id = apiInstance.start_convert_and_save(GroupDocsConversionCloud::StartConvertAndSaveRequest.new(settings))  
        operation_id = operation_id.delete_prefix('"').delete_suffix('"')      
        puts("Operation ID: " + operation_id)
        while true
            sleep(1)
            result = apiInstance.get_operation_status(GroupDocsConversionCloud::GetOperationStatusRequest.new(operation_id))
            if result.status == "Finished"
                puts("Document converted: " + result.result[0].url)
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
