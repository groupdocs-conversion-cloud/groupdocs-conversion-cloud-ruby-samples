# Load the gem
require 'groupdocs_conversion_cloud'
require 'common_utilities/Utils.rb'

class File_Formats
  def self.Conversion_Ruby_Get_All_Supported_Formats_For_Document()

    # Getting instance of the API
    api = Common_Utilities.Get_ConversionApi_Instance()

    $request = GroupDocsConversionCloud::GetSupportedConversionTypesRequest.new("one-page.docx", $myStorage, "")

    # Retrieve supported file-formats
    $response = api.get_supported_conversion_types($request)

    # Print out supported file-formats
    puts("Supported file-formats:")
    $response.each do |format|
      puts("#{format.source_format} to [#{format.target_formats.join(', ')}]")
    end
  end
end