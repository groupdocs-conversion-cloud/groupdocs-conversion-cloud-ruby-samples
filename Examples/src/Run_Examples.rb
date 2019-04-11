require 'common_utilities/Utils.rb'

# Get your app_sid and app_key at https://dashboard.groupdocs.cloud (free registration is required).
$app_sid = "d215ce72-1609-4282-8d55-5810942236fb"
$app_key = "715d18b0afef2f303882c769921fe05a"
$myStorage = "MyStorage" #Put your storage name here
$host_url = "http://api.groupdocs.cloud"   # Put your Host URL here

class Run_Examples

  #  ##########################################
  #    puts("Executing Upload Test Files...")
  #    Common_Utilities.Upload_Test_File()
  #  ##########################################

  ###########################################
  #  # ******* Execute Examples *******
  puts("*** Executing examples...")
  #  # ******* Execute Examples *******
  ###########################################

  ##########################################
  puts("*** Executing Get_Supported_File_Formats...")
  ##########################################

  require 'Supported_File_Formats\Conversion_Ruby_Get_All_Supported_Formats.rb'
  puts("* Executing Get_All_Supported_File_Formats...")
  File_Formats.Conversion_Ruby_Get_All_Supported_Formats()

  #  require 'Supported_File_Formats\Conversion_Ruby_Get_All_Supported_Formats_For_Extension.rb'
  #  puts("* Executing Conversion_Ruby_Get_All_Supported_Formats_For_Extension...")
  #  File_Formats.Conversion_Ruby_Get_All_Supported_Formats_For_Extension()

  #  require 'Supported_File_Formats\Conversion_Ruby_Get_All_Supported_Formats_For_Document.rb'
  #  puts("* Executing Conversion_Ruby_Get_All_Supported_Formats_For_Document...")
  #  File_Formats.Conversion_Ruby_Get_All_Supported_Formats_For_Document()

  ###########################################
  #  puts("*** Executing Working_With_Storage...")
  ###########################################

  #  require 'Working_With_Storage/Conversion_Ruby_Storage_Exist.rb'
  #  puts("* Executing Conversion_Ruby_Storage_Exist...")
  #  Working_With_Storage.Conversion_Ruby_Storage_Exist()

  #  require 'Working_With_Storage/Conversion_Ruby_Object_Exists.rb'
  #  puts("* Executing Conversion_Ruby_Object_Exists...")
  #  Working_With_Storage.Conversion_Ruby_Object_Exists()

  #  require 'Working_With_Storage/Conversion_Ruby_Get_File_Versions.rb'
  #  puts("* Executing Conversion_Ruby_Get_File_Versions...")
  #  Working_With_Storage.Conversion_Ruby_Get_File_Versions()

  #  require 'Working_With_Storage/Conversion_Ruby_Get_Disc_Usage.rb'
  #  puts("* Executing Conversion_Ruby_Get_Disc_Usage...")
  #  Working_With_Storage.Conversion_Ruby_Get_Disc_Usage()

  ###########################################
  #  puts("*** Executing Working_With_Folder...")
  ###########################################

  #  require 'Working_With_Folder/Conversion_Ruby_Create_Folder.rb'
  #  puts("* Executing Conversion_Ruby_Create_Folder...")
  #  Working_With_Folder.Conversion_Ruby_Create_Folder()

  #  require 'Working_With_Folder/Conversion_Ruby_Copy_Folder.rb'
  #  puts("* Executing Conversion_Ruby_Copy_Folder...")
  #  Working_With_Folder.Conversion_Ruby_Copy_Folder()

  #  require 'Working_With_Folder/Conversion_Ruby_Get_Files_List.rb'
  #  puts("* Executing Conversion_Ruby_Get_Files_List...")
  #  Working_With_Folder.Conversion_Ruby_Get_Files_List()

  #  require 'Working_With_Folder/Conversion_Ruby_Move_Folder.rb'
  #  puts("* Executing Conversion_Ruby_Move_Folder...")
  #  Working_With_Folder.Conversion_Ruby_Move_Folder()

  #  require 'Working_With_Folder/Conversion_Ruby_Delete_Folder.rb'
  #  puts("* Executing Conversion_Ruby_Delete_Folder...")
  #  Working_With_Folder.Conversion_Ruby_Delete_Folder()

  #  ##########################################
  #  puts("*** Executing Working_With_Files...")
  #  ##########################################

  #  require 'Working_With_Files/Conversion_Ruby_Upload_File.rb'
  #  puts("* Executing Conversion_Ruby_Upload_File...")
  #  Working_With_Files.Conversion_Ruby_Upload_File()

  #  require 'Working_With_Files/Conversion_Ruby_Download_File.rb'
  #  puts("* Executing Conversion_Ruby_Download_File...")
  #  Working_With_Files.Conversion_Ruby_Download_File()

  #  require 'Working_With_Files/Conversion_Ruby_Copy_File.rb'
  #  puts("* Executing Conversion_Ruby_Copy_File...")
  #  Working_With_Files.Conversion_Ruby_Copy_File()

  #  require 'Working_With_Files/Conversion_Ruby_Move_File.rb'
  #  puts("* Executing Conversion_Ruby_Move_File...")
  #  Working_With_Files.Conversion_Ruby_Move_File()

  #  require 'Working_With_Files/Conversion_Ruby_Delete_File.rb'
  #  puts("* Executing Conversion_Ruby_Delete_File...")
  #  Working_With_Files.Conversion_Ruby_Delete_File()

  ###########################################
  #  puts("*** Executing Working_With_Conversions...")
  ###########################################

  #  require 'Working_With_Conversions/Conversion_Ruby_Convert_To_Any_Format.rb'
  #  puts("* Executing Conversion_Ruby_Convert_To_Any_Format...")
  #  $convertOptions = GroupDocsConversionCloud::JpgConvertOptions.new()
  #  Working_With_Conversions.Conversion_Ruby_Convert_To_Any_Format("jpg", $convertOptions)

  #  require 'Working_With_Conversions/Conversion_Ruby_Convert_To_Any_Format_Stream.rb'
  #  puts("* Executing Conversion_Ruby_Convert_To_Any_Format_Stream...")
  #  $convertOptions = GroupDocsConversionCloud::JpgConvertOptions.new()
  #  Working_With_Conversions.Conversion_Ruby_Convert_To_Any_Format_Stream("jpg", $convertOptions)

  #  require 'Working_With_Conversions/Conversion_Ruby_Convert_To_Cells.rb'
  #  puts("* Executing Conversion_Ruby_Convert_To_Cells...")
  #  Working_With_Conversions.Conversion_Ruby_Convert_To_Cells()

  #  require 'Working_With_Conversions/Conversion_Ruby_Convert_To_Cells_Stream.rb'
  #  puts("* Executing Conversion_Ruby_Convert_To_Cells_Stream...")
  #  Working_With_Conversions.Conversion_Ruby_Convert_To_Cells_Stream()

  #  require 'Working_With_Conversions/Conversion_Ruby_Convert_To_Html.rb'
  #  puts("* Executing Conversion_Ruby_Convert_To_Html...")
  #  Working_With_Conversions.Conversion_Ruby_Convert_To_Html()

  #  require 'Working_With_Conversions/Conversion_Ruby_Convert_To_Html_Stream.rb'
  #  puts("* Executing Conversion_Ruby_Convert_To_Html_Stream...")
  #  Working_With_Conversions.Conversion_Ruby_Convert_To_Html_Stream()

  #  require 'Working_With_Conversions/Conversion_Ruby_Convert_To_Html.rb'
  #  puts("* Executing Conversion_Ruby_Convert_To_Html...")
  #  Working_With_Conversions.Conversion_Ruby_Convert_To_Html()

  #  require 'Working_With_Conversions/Conversion_Ruby_Convert_To_Html_Stream.rb'
  #  puts("* Executing Conversion_Ruby_Convert_To_Html_Stream...")
  #  Working_With_Conversions.Conversion_Ruby_Convert_To_Html_Stream()

  #  require 'Working_With_Conversions/Conversion_Ruby_Convert_To_Pdf.rb'
  #  puts("* Executing Conversion_Ruby_Convert_To_Pdf...")
  #  Working_With_Conversions.Conversion_Ruby_Convert_To_Pdf()

  #  require 'Working_With_Conversions/Conversion_Ruby_Convert_To_Pdf_Stream.rb'
  #  puts("* Executing Conversion_Ruby_Convert_To_Pdf_Stream...")
  #  Working_With_Conversions.Conversion_Ruby_Convert_To_Pdf_Stream()

  #  require 'Working_With_Conversions/Conversion_Ruby_Convert_To_Slides.rb'
  #  puts("* Executing Conversion_Ruby_Convert_To_Slides...")
  #  Working_With_Conversions.Conversion_Ruby_Convert_To_Slides()

  #  require 'Working_With_Conversions/Conversion_Ruby_Convert_To_Slides_Stream.rb'
  #  puts("* Executing Conversion_Ruby_Convert_To_Slides_Stream...")
  #  Working_With_Conversions.Conversion_Ruby_Convert_To_Slides_Stream()

  #  require 'Working_With_Conversions/Conversion_Ruby_Convert_To_Text.rb'
  #  puts("* Executing Conversion_Ruby_Convert_To_Text...")
  #  Working_With_Conversions.Conversion_Ruby_Convert_To_Text()

  #  require 'Working_With_Conversions/Conversion_Ruby_Convert_To_Text_Stream.rb'
  #  puts("* Executing Conversion_Ruby_Convert_To_Text_Stream...")
  #  Working_With_Conversions.Conversion_Ruby_Convert_To_Text_Stream()

  #  require 'Working_With_Conversions/Conversion_Ruby_Convert_To_Words.rb'
  #  puts("* Executing Conversion_Ruby_Convert_To_Words...")
  #  Working_With_Conversions.Conversion_Ruby_Convert_To_Words()

  #  require 'Working_With_Conversions/Conversion_Ruby_Convert_To_Words_Stream.rb'
  #  puts("* Executing Conversion_Ruby_Convert_To_Words_Stream...")
  #  Working_With_Conversions.Conversion_Ruby_Convert_To_Words_Stream()

end