# Load the gem
require 'groupdocs_conversion_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Folder
  def self.Conversion_Ruby_Delete_Folder()

    # Getting instance of the API
    $api = Common_Utilities.Get_FolderApi_Instance()
    
    $request = GroupDocsConversionCloud::DeleteFolderRequest.new("conversions1", $myStorage, true)
    $response = $api.delete_folder($request)

    puts("Expected response type is Void: 'conversions/conversions1' folder deleted recursively.")
  end
end