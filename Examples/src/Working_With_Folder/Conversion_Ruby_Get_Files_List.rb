# Load the gem
require 'groupdocs_conversion_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Folder
  def self.Conversion_Ruby_Get_Files_List()

    # Getting instance of the API
    $api = Common_Utilities.Get_FolderApi_Instance()
    
    $request = GroupDocsConversionCloud::GetFilesListRequest.new("conversions/sample.docx", $myStorage)
    $response = $api.get_files_list($request)

    puts("Expected response type is FilesList: " + ($response).to_s)
  end
end