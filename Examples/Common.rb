# Load the gem
require 'groupdocs_conversion_cloud'

$config = ""

class Common
  
  def self.UploadSampleFiles()

    @TestFiles=  Dir.glob("Resources/**/*.*")

    # Api initialization
    storageApi = GroupDocsConversionCloud::StorageApi.from_config($config)
    fileApi = GroupDocsConversionCloud::FileApi.from_config($config)

    puts("Files Count: "+((@TestFiles).length).to_s)
    @TestFiles.each do |item|
      dstPath = item.gsub('Resources/', '')
      puts("File to Upload: " + dstPath)
      fileExistRequest = GroupDocsConversionCloud::ObjectExistsRequest.new(dstPath)
      fileExistsResponse = storageApi.object_exists(fileExistRequest)
      if fileExistsResponse.exists == false
        file = File.open(item, "r")
        uploadRequest = GroupDocsConversionCloud::UploadFileRequest.new(dstPath, file)
        fileApi.upload_file(uploadRequest)
        puts("Uploaded missing file: " + item)
      end
    end

    puts("File Uploading completed..")
  end
end