# Load the gem
require 'groupdocs_conversion_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Conversions
  def self.Conversion_Ruby_Convert_To_Cells()

    # Getting instance of the API
    api = Common_Utilities.Get_ConvertApi_Instance()

    $settings = GroupDocsConversionCloud::ConvertSettings.new()
    $settings.storage_name = $myStorage;
    $settings.file_path = "conversions/password-protected.docx"
    $settings.format = "xlsx"

    $loadOptions = GroupDocsConversionCloud::DocxLoadOptions.new()
    $loadOptions.password = "password"

    $settings.load_options = $loadOptions;

    $convertOptions = GroupDocsConversionCloud::XlsxConvertOptions.new()
    $convertOptions.from_page = 1
    $convertOptions.pages_count = 1
    $convertOptions.password = "password"
    $convertOptions.use_pdf = false

    $settings.convert_options = $convertOptions
    $settings.output_path = "converted/tocells"

    $request = GroupDocsConversionCloud::ConvertDocumentRequest.new($settings)

    $response = api.convert_document($request)
    puts("Document converted successfully: " + ($response).to_s)
  end
end