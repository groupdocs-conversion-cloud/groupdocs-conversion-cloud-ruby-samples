# Load the gem
require 'groupdocs_conversion_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Folder
  def self.Conversion_Ruby_Move_Folder()

    # Getting instance of the API
    $api = Common_Utilities.Get_FolderApi_Instance()

    $request = GroupDocsConversionCloud::MoveFolderRequest.new("conversions1", "conversions/conversions1", $myStorage, $myStorage)
    $response = $api.move_folder($request)

    puts("Expected response type is Void: 'conversions1' folder moved to 'conversions/conversions1'.")
  end
end