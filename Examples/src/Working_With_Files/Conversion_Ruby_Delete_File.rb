# Load the gem
require 'groupdocs_conversion_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Files
  def self.Conversion_Ruby_Delete_File()

    # Getting instance of the API
    $api = Common_Utilities.Get_FileApi_Instance()

    $request = GroupDocsConversionCloud::DeleteFileRequest.new("conversions1/one-page.docx", $myStorage)
    $response = $api.delete_file($request)

    puts("Expected response type is Void: 'conversions1/one-page.docx' deleted.")
  end
end