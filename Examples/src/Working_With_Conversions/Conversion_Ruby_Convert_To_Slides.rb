# Load the gem
require 'groupdocs_conversion_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Conversions
  def self.Conversion_Ruby_Convert_To_Slides()

    # Getting instance of the API
    api = Common_Utilities.Get_ConvertApi_Instance()

    $settings = GroupDocsConversionCloud::ConvertSettings.new()
    $settings.storage_name = $myStorage;
    $settings.file_path = "conversions/sample.docx"
    $settings.format = "pptx"

    $loadOptions = GroupDocsConversionCloud::DocxLoadOptions.new()
    $loadOptions.hide_word_tracked_changes = true
    $loadOptions.default_font = "Arial"

    $settings.load_options = $loadOptions

    $convertOptions = GroupDocsConversionCloud::PptxConvertOptions.new()
    $convertOptions.from_page = 1
    $convertOptions.pages_count = 1
    $convertOptions.zoom = 1

    $settings.convert_options = $convertOptions
    $settings.output_path = "converted/topptx"

    $request = GroupDocsConversionCloud::ConvertDocumentRequest.new($settings)

    $response = api.convert_document($request)
    puts("Document converted successfully: " + ($response).to_s)
  end
end