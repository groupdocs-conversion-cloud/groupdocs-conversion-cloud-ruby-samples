# Load the gem
require 'groupdocs_conversion_cloud'
require 'common_utilities/Utils.rb'

class Document_Information
  def self.Conversion_Ruby_Get_Document_Information()

    # Getting instance of the API
    api = Common_Utilities.Get_InfoApi_Instance()

    $request = GroupDocsConversionCloud::GetDocumentMetadataRequest.new()
    $request.storage_name = $myStorage;
    $request.file_path = "conversions/sample.docx"
	
    $response = api.get_document_metadata($request)

    puts("Expected response type is DocumentMetadata: " + ($response).to_s)
  end
end