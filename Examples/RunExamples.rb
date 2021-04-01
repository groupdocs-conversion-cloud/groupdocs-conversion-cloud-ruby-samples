require './Common.rb'

# Get your ClientId and ClientSecret at https://dashboard.groupdocs.cloud (free registration is required).
$client_id = "XXXX-XXXX-XXXX-XXXX"
$client_secret = "XXXXXXXXXXXXXXXX"

$config = GroupDocsConversionCloud::Configuration.new($client_id, $client_secret)
$config.api_base_url = "https://api.groupdocs.cloud"

class RunExamples

  # Uploading sample test files from local disk to cloud storage
  Common.UploadSampleFiles()

  # Info API Examples
  require './Info/GetSupportedConversions.rb'
  GetSupportedConversions.Run()

  require './Info/GetDocumentInformation.rb'
  GetDocumentInformation.Run()  

  # Document conversion examples with conversion options
  require './Convert/ConvertToWordProcessing.rb'
  ConvertToWordProcessing.Run()    

  require './Convert/ConvertToPdf.rb'
  ConvertToPdf.Run() 

  require './Convert/ConvertToPdfResponseBody.rb'
  ConvertToPdfResponseBody.Run() 

  require './Convert/ConvertToHtml.rb'
  ConvertToHtml.Run() 

  require './Convert/ConvertToImage.rb'
  ConvertToImage.Run() 

  require './Convert/ConvertToPresentation.rb'
  ConvertToPresentation.Run() 

  require './Convert/ConvertToSpreadsheet.rb'
  ConvertToSpreadsheet.Run() 

  require './Convert/ConvertToPdfDirect.rb'
  ConvertToPdfDirect.Run() 

  # Document conversion examples with common options
  require './Common/AddWatermark.rb'
  AddWatermark.Run() 

  require './Common/ConvertConsecutivePages.rb'
  ConvertConsecutivePages.Run() 

  require './Common/ConvertSpecificPages.rb'
  ConvertSpecificPages.Run() 

  require './Common/ConvertUsingCustomFont.rb'
  ConvertUsingCustomFont.Run()   

  # Document conversion examples with loading options
  require './LoadOptionsByDocumentType/Cad/ConvertCadAndSpecifyLoadOptions.rb'
  ConvertCadAndSpecifyLoadOptions.Run() 

  require './LoadOptionsByDocumentType/Csv/ConvertCsvByConvertingDateTimeAndNumericData.rb'
  ConvertCsvByConvertingDateTimeAndNumericData.Run() 

  require './LoadOptionsByDocumentType/Csv/ConvertCsvBySpecifyingDelimiter.rb'
  ConvertCsvBySpecifyingDelimiter.Run() 

  require './LoadOptionsByDocumentType/Csv/ConvertCsvBySpecifyingEncoding.rb'
  ConvertCsvBySpecifyingEncoding.Run() 

  require './LoadOptionsByDocumentType/Email/ConvertEmailWithAlteringFieldsVisibility.rb'
  ConvertEmailWithAlteringFieldsVisibility.Run() 

  require './LoadOptionsByDocumentType/Email/ConvertEmailWithAttachments.rb'
  ConvertEmailWithAttachments.Run() 

  require './LoadOptionsByDocumentType/Email/ConvertEmailWithTimezoneOffset.rb'
  ConvertEmailWithTimezoneOffset.Run() 

  require './LoadOptionsByDocumentType/Email/ConvertEmailWithFieldLabels.rb'
  ConvertEmailWithFieldLabels.Run() 
  
  require './LoadOptionsByDocumentType/Email/ConvertEmailWithOriginalDate.rb'
  ConvertEmailWithOriginalDate.Run() 
  
  require './LoadOptionsByDocumentType/Html/ConvertHtmlWithPageNumbering.rb'
  ConvertHtmlWithPageNumbering.Run()   

  require './LoadOptionsByDocumentType/Note/ConvertNoteBySpecifyingFontSubstitution.rb'
  ConvertNoteBySpecifyingFontSubstitution.Run() 

  require './LoadOptionsByDocumentType/Pdf/ConvertPdfAndFlattenAllFields.rb'
  ConvertPdfAndFlattenAllFields.Run()   

  require './LoadOptionsByDocumentType/Pdf/ConvertPdfAndHideAnnotations.rb'
  ConvertPdfAndHideAnnotations.Run()   
  
  require './LoadOptionsByDocumentType/Pdf/ConvertPdfAndRemoveEmbeddedFiles.rb'
  ConvertPdfAndRemoveEmbeddedFiles.Run()   
  
  require './LoadOptionsByDocumentType/Presentation/ConvertPresentationByHidingComments.rb'
  ConvertPresentationByHidingComments.Run()   
  
  require './LoadOptionsByDocumentType/Presentation/ConvertPresentationBySpecifyingFontSubstitution.rb'
  ConvertPresentationBySpecifyingFontSubstitution.Run()   
  
  require './LoadOptionsByDocumentType/Presentation/ConvertPresentationWithHiddenSlidesIncluded.rb'
  ConvertPresentationWithHiddenSlidesIncluded.Run()   
  
  require './LoadOptionsByDocumentType/Spreadsheet/ConvertSpreadsheetAndHideComments.rb'
  ConvertSpreadsheetAndHideComments.Run()     
  
  require './LoadOptionsByDocumentType/Spreadsheet/ConvertSpreadsheetByShowingGridLines.rb'
  ConvertSpreadsheetByShowingGridLines.Run()    
  
  require './LoadOptionsByDocumentType/Spreadsheet/ConvertSpreadsheetBySkippingEmptyRowsAndColumns.rb'
  ConvertSpreadsheetBySkippingEmptyRowsAndColumns.Run()    

  require './LoadOptionsByDocumentType/Spreadsheet/ConvertSpreadsheetBySpecifyingFontsubstitution.rb'
  ConvertSpreadsheetBySpecifyingFontsubstitution.Run()    

  require './LoadOptionsByDocumentType/Spreadsheet/ConvertSpreadsheetBySpecifyingRange.rb'
  ConvertSpreadsheetBySpecifyingRange.Run()    

  require './LoadOptionsByDocumentType/Spreadsheet/ConvertSpreadsheetWithHiddenSheetsIncluded.rb'
  ConvertSpreadsheetWithHiddenSheetsIncluded.Run()    

  require './LoadOptionsByDocumentType/Txt/ConvertTxtByControllingLeadingSpacesBehavior.rb'
  ConvertTxtByControllingLeadingSpacesBehavior.Run()    

  require './LoadOptionsByDocumentType/Txt/ConvertTxtByControllingTrailingSpacesBehavior.rb'
  ConvertTxtByControllingTrailingSpacesBehavior.Run()    
  
  require './LoadOptionsByDocumentType/Txt/ConvertTxtBySpecifyingEncoding.rb'
  ConvertTxtBySpecifyingEncoding.Run()    

  require './LoadOptionsByDocumentType/WordProcessing/ConvertWordProcessingByHidingComments.rb'
  ConvertWordProcessingByHidingComments.Run()    

  require './LoadOptionsByDocumentType/WordProcessing/ConvertWordProcessingByHidingTrackedChanges.rb'
  ConvertWordProcessingByHidingTrackedChanges.Run()    

  require './LoadOptionsByDocumentType/WordProcessing/ConvertWordProcessingBySpecifyingFontSubstitution.rb'
  ConvertWordProcessingBySpecifyingFontSubstitution.Run()    

end