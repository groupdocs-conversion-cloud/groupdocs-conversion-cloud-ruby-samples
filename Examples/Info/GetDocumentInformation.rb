# Import modules
require 'groupdocs_conversion_cloud'
require './Common.rb'

#  This example demonstrates how to get document info
class GetDocumentInformation
    
    def self.Run()        
        infoApi = GroupDocsConversionCloud::InfoApi.from_keys($app_sid, $app_key)
        request = GroupDocsConversionCloud::GetDocumentMetadataRequest.new()
        request.file_path = 'WordProcessing/four-pages.docx'        
        response = infoApi.get_document_metadata(request)
        puts("Pages count = " + response.page_count.to_s)
    end

end