# Import modules
require 'groupdocs_conversion_cloud'
require './Common.rb'

#  This example demonstrates how to obtain all supported document conversions
class GetSupportedConversions
    
    def self.Run()        
        infoApi = GroupDocsConversionCloud::InfoApi.from_keys($app_sid, $app_key)        
        result = infoApi.get_supported_conversion_types(GroupDocsConversionCloud::GetSupportedConversionTypesRequest.new())
        puts("Formats count: " + result.length.to_s)
    end

end