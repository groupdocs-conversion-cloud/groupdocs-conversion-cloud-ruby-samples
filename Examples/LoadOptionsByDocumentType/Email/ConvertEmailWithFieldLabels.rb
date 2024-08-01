# Import modules
require './Common.rb'

# This example demonstrates how to convert msg document into pdf document
# and replace field labels to custom values
class ConvertEmailWithFieldLabels
    
    def self.Run()
        # Create necessary API instances
        apiInstance = GroupDocsConversionCloud::ConvertApi.from_config($config)
        
        # Prepare convert settings
        settings = GroupDocsConversionCloud::ConvertSettings.new
        settings.file_path = "Email/sample.msg"
        settings.format = "pdf"

        loadOptions = GroupDocsConversionCloud::EmailLoadOptions.new
        fieldLabel = GroupDocsConversionCloud::FieldLabel.new
        fieldLabel.field = "From"
        fieldLabel.label = "Sender"
        loadOptions.field_labels = [fieldLabel]

        settings.load_options = loadOptions
        settings.output_path = "converted"

        # Convert
        result = apiInstance.convert_document(GroupDocsConversionCloud::ConvertDocumentRequest.new(settings))

        puts("Document converted: " + result[0].url)
    end

end
