# Load the gem
require 'groupdocs_conversion_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Conversions
  def self.Conversion_Ruby_Convert_To_Pdf()

    # Getting instance of the API
    api = Common_Utilities.Get_ConversionApi_Instance()

    $settings = GroupDocsConversionCloud::ConvertSettings.new()
    $settings.storage_name = $myStorage;
    $settings.file_path = "conversions/password-protected.docx"
    $settings.format = "pdf"

    $loadOptions = GroupDocsConversionCloud::DocxLoadOptions.new()
    $loadOptions.password = "password"

    $settings.load_options = $loadOptions;

    $convertOptions = GroupDocsConversionCloud::PdfConvertOptions.new()
    $convertOptions.bookmarks_outline_level = 1;
    $convertOptions.center_window = true
    $convertOptions.compress_images = false;
    $convertOptions.display_doc_title = true
    $convertOptions.dpi = 1024
    $convertOptions.expanded_outline_levels = 1
    $convertOptions.fit_window = false
    $convertOptions.from_page = 1
    $convertOptions.pages_count = 1
    $convertOptions.grayscale = true
    $convertOptions.headings_outline_levels = 1
    $convertOptions.image_quality = 100
    $convertOptions.linearize = false
    $convertOptions.margin_top = 5
    $convertOptions.margin_left = 5
    $convertOptions.password = "password"
    $convertOptions.unembed_fonts = true
    $convertOptions.remove_unused_streams = true
    $convertOptions.remove_unused_objects = true
    $convertOptions.remove_pdfa_compliance = false
    $convertOptions.height = 1024

    $settings.convert_options = $convertOptions
    $settings.output_path = "converted/topdf"

    $request = GroupDocsConversionCloud::ConvertDocumentRequest.new($settings)

    $response = api.convert_document($request)
    puts("Document converted successfully: " + ($response).to_s)
  end
end