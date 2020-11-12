# Import modules
require 'groupdocs_conversion_cloud'
require './Common.rb'

# This example demonstrates how to convert a word-processing document to pdf with advanced options
class ConvertWordProcessingBySpecifyingFontSubstitution
    
    def self.Run()
        # Create necessary API instances
        apiInstance = GroupDocsConversionCloud::ConvertApi.from_config($config)
        
        # Prepare convert settings
        settings = GroupDocsConversionCloud::ConvertSettings.new
        settings.file_path = "WordProcessing/with_tracked_changes.docx"
        settings.format = "pdf"

        loadOptions = GroupDocsConversionCloud::WordProcessingLoadOptions.new
        loadOptions.auto_font_substitution = false
        loadOptions.default_font = "Helvetica"
        fonts = Hash.new
        fonts["Tahoma"] = "Arial"
        fonts["Times New Roman"] = "Arial"
        loadOptions.font_substitutes = fonts

        settings.load_options = loadOptions
        settings.output_path = "converted"

        # Convert
        result = apiInstance.convert_document(GroupDocsConversionCloud::ConvertDocumentRequest.new(settings))

        puts("Document converted: " + result[0].url)
    end

end
