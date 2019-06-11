# Load the gem
require 'groupdocs_conversion_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Conversions
  def self.Conversion_Ruby_Convert_To_Text_Stream()

    # Getting instance of the API
    api = Common_Utilities.Get_ConvertApi_Instance()

    $settings = GroupDocsConversionCloud::ConvertSettings.new()
    $settings.storage_name = $myStorage;
    $settings.file_path = "conversions/sample.docx"
    $settings.format = "txt"

    $loadOptions = GroupDocsConversionCloud::DocxLoadOptions.new()
    $loadOptions.hide_word_tracked_changes = true
    $loadOptions.default_font = "Arial"

    $settings.load_options = $loadOptions

    $convertOptions = GroupDocsConversionCloud::TxtConvertOptions.new()
    $convertOptions.from_page = 1
    $convertOptions.pages_count = 1

    $settings.convert_options = $convertOptions
    # leave OutputPath will result the output as document IOStream

    $request = GroupDocsConversionCloud::ConvertDocumentRequest.new($settings)

    $response = api.convert_document($request)
    puts("Document converted successfully: " + ($response.length).to_s)
  end
end