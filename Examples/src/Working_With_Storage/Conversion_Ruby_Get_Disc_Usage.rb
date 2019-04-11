# Load the gem
require 'groupdocs_conversion_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Storage
  def self.Conversion_Ruby_Get_Disc_Usage()

    # Getting instance of the API
    $api = Common_Utilities.Get_StorageApi_Instance()
    
    $request = GroupDocsConversionCloud::GetDiscUsageRequest.new($myStorage)
    $response = $api.get_disc_usage($request)

    puts("Expected response type is DiscUsage: " + ($response).to_s)
  end
end