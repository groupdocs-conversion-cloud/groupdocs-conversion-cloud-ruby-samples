# Load the gem
require 'groupdocs_conversion_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Storage
  def self.Conversion_Ruby_Object_Exists()

    # Getting instance of the API
    $api = Common_Utilities.Get_StorageApi_Instance()
    
    $request = GroupDocsConversionCloud::ObjectExistsRequest.new("conversions/one-page.docx", $myStorage)
    $response = $api.object_exists($request)

    puts("Expected response type is ObjectExist: " + ($response).to_s)
  end
end