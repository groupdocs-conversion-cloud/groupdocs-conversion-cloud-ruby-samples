# Import modules
require './Common.rb'

# This example demonstrates how to convert one note document into pdf document
class ConvertNoteBySpecifyingFontSubstitution
    
    def self.Run()
        # Create necessary API instances
        apiInstance = GroupDocsConversionCloud::ConvertApi.from_config($config)
        
        # Prepare convert settings
        settings = GroupDocsConversionCloud::ConvertSettings.new
        settings.file_path = "Note/sample.one"
        settings.format = "pdf"

        loadOptions = GroupDocsConversionCloud::NoteLoadOptions.new
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
