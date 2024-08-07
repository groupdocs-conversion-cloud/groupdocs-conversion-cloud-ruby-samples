# Import modules
require './Common.rb'

#  This example demonstrates how to obtain all supported document conversions
class GetSupportedConversions
    
    def self.Run()        
        infoApi = GroupDocsConversionCloud::InfoApi.from_config($config)        
        result = infoApi.get_supported_conversion_types(GroupDocsConversionCloud::GetSupportedConversionTypesRequest.new())
        puts("Formats count: " + result.length.to_s)
    end

end