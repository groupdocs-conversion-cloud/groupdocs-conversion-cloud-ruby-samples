# Load the gem
require 'groupdocs_conversion_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Files
  def self.Conversion_Ruby_Move_File()

    # Getting instance of the API
    $api = Common_Utilities.Get_FileApi_Instance()

    $request = GroupDocsConversionCloud::MoveFileRequest.new("conversions/one-page.docx", "conversions1/one-page.docx", $myStorage, $myStorage)
    $response = $api.move_file($request)

    puts("Expected response type is Void: 'conversions/one-page.docx' file moved to 'conversions1/one-page.docx'.")
  end
end