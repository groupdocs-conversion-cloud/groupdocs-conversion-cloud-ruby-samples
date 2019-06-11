# Load the gem
require 'groupdocs_conversion_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Conversions
  def self.Conversion_Ruby_Convert_To_Words()

    # Getting instance of the API
    api = Common_Utilities.Get_ConvertApi_Instance()

    $settings = GroupDocsConversionCloud::ConvertSettings.new()
    $settings.storage_name = $myStorage;
    $settings.file_path = "converted/topdf/password-protected.pdf"
    $settings.format = "docx"

    $loadOptions = GroupDocsConversionCloud::PdfLoadOptions.new()
    $loadOptions.password = "password"
    $loadOptions.hide_pdf_annotations = true
    $loadOptions.remove_embedded_files = false
    $loadOptions.flatten_all_fields = true

    $settings.load_options = $loadOptions

    $convertOptions = GroupDocsConversionCloud::DocxConvertOptions.new()
    $convertOptions.from_page = 1
    $convertOptions.pages_count = 1

    $settings.convert_options = $convertOptions
    $settings.output_path = "converted/todocx"

    $request = GroupDocsConversionCloud::ConvertDocumentRequest.new($settings)

    $response = api.convert_document($request)
    puts("Document converted successfully: " + ($response).to_s)
  end
end