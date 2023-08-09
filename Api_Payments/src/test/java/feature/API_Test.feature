Feature: TESTING PAYMENTS API


  Scenario: Test Acquiring1  Post API successful Status Code 200 AQ1 Standard1
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Standard_User_Send_Payload_With_successful_Status_Code_200.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 200
    Then Verify response header Business code "business-code" is "1100"


  Scenario: Test Acquiring1 API Standard Post API successful Business  Code  AQ1 Standard2
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Standard_User_Send_Payload_With_successful_Business_Code.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 200
    Then Verify response header Business code "business-code" is "1100"

  Scenario: Test Acquiring1 API Standard Post API successful correlation Id AQ1 Standard3
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Standard_User_Send_Payload_With_successful_correlationId.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 200
    Then Verify response header Business code "business-code" is "1100"

  Scenario: Test Acquiring1 API Standard Post API invalid Json format Field Missing AQ1 Standard4
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Standard_User_Send_invalid_Json_format_Field_Missing.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1311" and Verify error details "error_details[0]" in response body is "Request format is incorrect"

  Scenario: Test Acquiring1 API Standard Post API Without Date Parameter AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Standard_User_Send_Payload_Without_Date_Parameter.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1305" and Verify error details "error_details[0]" in response body is "At least one field is not present in request"

  Scenario: Test Acquiring1 API Standard Post API More than 8 Years old AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Standard_User_Send_Payload_Morethan_8_Years_old.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1305" and Verify error details "error_details[0]" in response body is "Date Range exceeded the allowed limit for Product"

  Scenario: Test Acquiring1 API Standard Post API More than 6 Months Old AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Standard_User_Send_Payload_Morethan_6_Months_Old.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1307" and Verify error details "error_details[0]" in response body is "Date Range is not valid"

  Scenario: Test Acquiring1 API Standard Post API Exactly 8 Years old AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Standard_User_Send_Payload_Exactly_8_Years_old.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1305" and Verify error details "error_details[0]" in response body is "Date Range exceeded the allowed limit for Product"


  Scenario: Test Acquiring1 API Standard Post API Incorrect Date Format AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Standard_User_Send_Payload_Incorrect_Date_Format.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1307" and Verify error details "error_details[0]" in response body is "Date Range is not valid"



  Scenario: Test Acquiring1 API Standard Post API Without Terminal id AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Standard_User_Send_Payload_Without_Terminalid.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1305" and Verify error details "error_details[0]" in response body is "Terminal ID is not valid"


  Scenario: Test Acquiring1 API Standard Post API Invalid Terminal id AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Standard_User_Send_Payload_Invalid_Terminalid.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1308" and Verify error details "error_details[0]" in response body is "Terminal ID is not valid"


  Scenario: Test Acquiring1 API Standard Post API Less than 16 Characters Terminal id AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Standard_User_Send_Payload_Lessthan_16_Characters_Terminalid.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1308" and Verify error details "error_details[0]" in response body is "Terminal ID is not valid"


  Scenario: Test Acquiring1 API Standard Post API Special Characters in Terminal id AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Standard_User_Send_Payload_Special_Characters_in_Terminalid.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1308" and Verify error details "error_details[0]" in response body is "Terminal ID is not valid"


  Scenario: Test Acquiring1 API Standard Post API Alphabets Characters in Terminal id AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Standard_User_Send_Payload_Alphabets_Characters_in_Terminalid.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1308" and Verify error details "error_details[0]" in response body is "Terminal ID is not valid"


  Scenario: Test Acquiring1 API Standard Post API Without Terminal id And Date Range AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Standard_User_Send_Payload_Without_Terminalid_And_DateRange.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1308" and Verify error details "error_details[0]" in response body is "Terminal ID is not valid"


  Scenario: Test Acquiring1 API Standard Post API No Subscription AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Standard_User_Send_Payload_No_Subscription.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 500
    Then Verify response header Business code "business-code" is "1401" and Verify error details "error_details[0]" in response body is "Operation Failed"

  Scenario: Test Acquiring1 API Standard Post API Improper URL AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-2-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Standard_User_Send_Payload_ImproperURL.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 404
    Then Verify response header Business code "business-code" is "1303" and Verify error details "error_details[0]" in response body is "Bad Request"


  Scenario: Test Acquiring1 API Standard Post API No Data Available on DB AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Standard_User_Send_Payload_No_Data_AvailableOn_DB.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1312" and Verify error details "error_details[0]" in response body is "No data found for given parameters"


  Scenario: Test Acquiring1 API Standard Post API End Date As Todays Date AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Standard_User_Send_Payload_EndDate_As_FeatureDate.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1305" and Verify error details "error_details[0]" in response body is "Date Range exceeded the allowed limit for Product"


  Scenario: Test Acquiring1 API Standard  StartDate And EndDate Both Are Same AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Standard_User_Send_Payload_StartDate_And_EndDate_Both_Are_Same.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1307" and Verify error details "error_details[0]" in response body is "Date Range is not valid"

    #Premium Scenario's for AQ1

  Scenario: Test Acquiring1 API Premium Post API With successful Status Code 200 AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Premium_User_Send_Payload_With_successful_Status_Code_200.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 200
    Then Verify response header Business code "business-code" is "1100"

  Scenario: Test Acquiring1 API Premium Post API With successful Business Code 200 AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Premium_User_Send_Payload_With_successful_Verify_Bussiness_Code.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 200
    Then Verify response header Business code "business-code" is "1100"



  Scenario: Test Acquiring1 API Premium Post API Without Date Parameter AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Premium_User_Send_Payload_Without_Date_Parameter.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1305" and Verify error details "error_details[0]" in response body is "At least one field is not present in request"


  Scenario: Test Acquiring1 API Premium Post API More than 8 Years old AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Premium_User_Send_Payload_Morethan_8_Years_old.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1305" and Verify error details "error_details[0]" in response body is "Date Range exceeded the allowed limit for Product"



  Scenario: Test Acquiring1 API Premium Post API More than 6 Months Old AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Premium_User_Send_Payload_Morethan_6_Months_Old.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1307" and Verify error details "error_details[0]" in response body is "Date Range is not valid"


  Scenario: Test Acquiring1 API Premium Post API Incorrect Date Format AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Premium_User_Send_Payload_Incorrect_Date_Format.Json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1307" and Verify error details "error_details[0]" in response body is "Date Range is not valid"


  Scenario: Test Acquiring1 API Premium Post API Without Terminal id AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Premium_User_Send_Payload_Without_Terminalid.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1305" and Verify error details "error_details[0]" in response body is "Terminal ID is not valid"


  Scenario: Test Acquiring1 API Premium Post API Invalid Terminal id AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Premium_User_Send_Payload_Invalid_Terminalid.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1312" and Verify error details "error_details[0]" in response body is "No data found for given parameters"



  Scenario: Test Acquiring1 API Premium Post API Less than 16 Characters Terminal id AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Premium_User_Send_Payload_Lessthan_16_Characters_Terminalid.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1308" and Verify error details "error_details[0]" in response body is "Terminal ID is not valid"


  Scenario: Test Acquiring1 API Premium Post API Special Characters in Terminal id AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Premium_User_Send_Payload_Special_Characters_in_Terminalid.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1308" and Verify error details "error_details[0]" in response body is "Terminal ID is not valid"


  Scenario: Test Acquiring1 API Premium Post API Alphabets Characters in Terminal id AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Premium_User_Send_Payload_Alphabets_Characters_in_Terminalid.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1308" and Verify error details "error_details[0]" in response body is "Terminal ID is not valid"


  Scenario: Test Acquiring1 API Premium Post API Without Terminal id And Date Range AQ1 Premium
    Given User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Premium_User_Send_Payload_Without_Terminalid_And_DateRange.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1308" and Verify error details "error_details[0]" in response body is "Terminal ID is not valid"


  Scenario: Test Acquiring1 API Premium Post API  Without Subscription AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Premium_User_Send_Payload_No_Subscription.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 500
    Then Verify response header Business code "business-code" is "1401" and Verify error details "error_details[0]" in response body is "Operation Failed"


  Scenario: Test Acquiring1 API Premium Post API Improper URL AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-2-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Premium_User_Send_Payload_ImproperURL.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1305" and Verify error details "error_details[0]" in response body is "Date Range exceeded the allowed limit for Product"


  Scenario: Test Acquiring1 API Premium Post API exactly 8 Years old AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Premium_User_Send_Payload_Exactly_8_Years_old.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1305" and Verify error details "error_details[0]" in response body is "Date Range exceeded the allowed limit for Product"


  Scenario: Test Acquiring1 API Premium Post API No Data Available on DB AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Premium_User_Send_Payload_No_Data_AvailableOn_DB.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1312" and Verify error details "error_details[0]" in response body is "No data found for given parameters"



  Scenario: Test Acquiring1 API Premium Post API End Date As Todays Date AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Premium_User_Send_Payload_EndDate_As_FeatureDate.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1305" and Verify error details "error_details[0]" in response body is "Date Range exceeded the allowed limit for Product"


  Scenario: Test Acquiring1 API Premium Post API invalid Json format Field Missing AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Premium_User_Send_invalid_Json_format_Field_Missing.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1311" and Verify error details "error_details[0]" in response body is "Request format is incorrect"



  Scenario: Test Acquiring1 API Premium Post API Payload StartDate And End Date Both Are Same AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "AQ1_Premium_User_Send_Payload_StartDate_And_EndDate_Both_Are_Same.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1307" and Verify error details "error_details[0]" in response body is "Date Range is not valid"



    ##############################################################################################################################
  #######################################################################################
  ##########################################################################################

  ##########################################################################################



  Scenario: Test Issuing1 Post API successful Status Code 200 Issuing1 Standard1
    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing1_Standard_User_Send_Payload_With_successful_Status_Code_200.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 200
    Then Verify response header Business code "business-code" is "1100"


  Scenario: Test Issuing1 Post API successful Business Code Issuing1 Standard2
    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing1_Standard_User_Send_Payload_With_successful_Business_Code.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 200
    Then Verify response header Business code "business-code" is "1100"


  Scenario: Test Issuing1 Post API Without Date Parameter Issuing1 Standard3

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing1_Standard_User_Send_Payload_Without_Date_Parameter.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1305" and Verify error details "error_details[0]" in response body is "Date Range exceeded the allowed limit for Product"



  Scenario: Test Issuing1 Post API More than 8 Years old Issuing1 Standard4

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing1_Standard_User_Send_Payload_Morethan_8_Years_old.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1305" and Verify error details "error_details[0]" in response body is "Date Range exceeded the allowed limit for Product"

  Scenario: Test Issuing1 Post API More than 6 Months Old Issuing1 Standard5

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing1_Standard_User_Send_Payload_Morethan_6_Months_Old.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1307" and Verify error details "error_details[0]" in response body is "Date Range is not valid"


  Scenario: Test Issuing1 Post API Incorrect Date Format Issuing1 Standard6

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing1_Standard_User_Send_Payload_Incorrect_Date_Format.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1307" and Verify error details "error_details[0]" in response body is "Date Range is not valid"

  Scenario: Test Issuing1 Post API End Date As Todays Date Issuing1 Standard7

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing1_Standard_User_Send_Payload_EndDate_As_TodaysDate.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1307" and Verify error details "error_details[0]" in response body is "Date Range is not valid"

  Scenario: Test Issuing1 Post API Without card token Issuing1 Standard8

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing1_Standard_User_Send_Payload_Invalid_cardtoken.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1309" and Verify error details "error_details[0]" in response body is "Token is not valid"

  Scenario: Test Issuing1 Post API Alphabets Characters in card token Issuing1 Standard9

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing1_Standard_User_Send_Payload_Alphabets_Characters_in_cardtoken.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1309" and Verify error details "error_details[0]" in response body is "Token is not valid"

  Scenario: Test Issuing1 Post API No Subscription Issuing1 Standard10

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing1_Standard_User_Send_Payload_No_Subscription.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 500
    Then Verify response header Business code "business-code" is "1401" and Verify error details "error_details[0]" in response body is "Operation Failed"



  Scenario: Test Issuing1 Post API ImproperURL Issuing1 Standard11

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing1_Standard_User_Send_Payload_ImproperURL.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 404
    Then Verify response header Business code "business-code" is "1303" and Verify error details "error_details[0]" in response body is "Not Found"

  Scenario: Test Issuing1 Post API No Data AvailableOn DB Issuing1 Standard12

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing1_Standard_User_Send_Payload_No_Data_AvailableOn_DB.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1312" and Verify error details "error_details[0]" in response body is "No data found for given parameters"

  Scenario: Test Issuing1 Post API invalid Json format Field Missing Issuing1 Standard13

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing1_Standard_User_Send_invalid_Json_format_Field_Missing.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1311" and Verify error details "error_details[0]" in response body is "Request format is incorrect"


  Scenario: Test Issuing1 Post API successful Status Code 200 Issuing1 Premium14

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing1_Premium_User_Send_Payload_With_successful_Status_Code_200.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 200
    Then Verify response header Business code "business-code" is "1100"

  Scenario: Test Issuing1  Post API successful Business  Code  Issuing1 Premium15

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing1_Premium_User_Send_Payload_With_successful_Business_Code.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 200
    Then Verify response header Business code "business-code" is "1100"

  Scenario: Test Issuing1 API Standard Post API Without Date Parameter Issuing1 Premium16

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing1_Premium_User_Send_Payload_Without_Date_Parameter.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1305" and Verify error details "error_details[0]" in response body is "Date Range exceeded the allowed limit for Product"


  Scenario: Test Issuing1 API Standard Post API More than 8 Years old Issuing1 Premium17

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing1_Premium_User_Send_Payload_Morethan_8_Years_old.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1305" and Verify error details "error_details[0]" in response body is "Date Range exceeded the allowed limit for Product"



  Scenario: Test Issuing1 API Standard Post API More than 6 Months Old Issuing1 Premium18

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing1_Premium_User_Send_Payload_Morethan_6_Months_Old.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1307" and Verify error details "error_details[0]" in response body is "Date Range is not valid"


  Scenario: Test Issuing1 API Standard Post APIIncorrect Date Format Issuing1 Premium19

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing1_Premium_User_Send_Payload_Incorrect_Date_Format.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1307" and Verify error details "error_details[0]" in response body is "Date Range is not valid"


  Scenario: Test Issuing1 API Standard Post API EndDate As Todays Date Issuing1 Premium20

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing1_Premium_User_Send_Payload_EndDate_As_TodaysDate.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1307" and Verify error details "error_details[0]" in response body is "Date Range is not valid"


  Scenario: Test Issuing1 API Standard Post API Without card token Issuing1 Premium21

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing1_Premium_User_Send_Payload_Invalid_cardtoken.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1309" and Verify error details "error_details[0]" in response body is "Token is not valid"



  Scenario: Test Issuing1 API Standard Post API Alphabets Characters in card token Issuing1 Premium22

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing1_Premium_User_Send_Payload_Alphabets_Characters_in_cardtoken.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1309" and Verify error details "error_details[0]" in response body is "Token is not valid"



  Scenario: Test Issuing1 API Standard Post API No Subscription Issuing1 Premium23
    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing1_Premium_User_Send_Payload_No_Subscription.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 500
    Then Verify response header Business code "business-code" is "1401" and Verify error details "error_details[0]" in response body is "Operation Failed"



  Scenario: Test Issuing1 API Standard Post API ImproperURL Issuing1 Premium24
    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing1_Premium_User_Send_Payload_ImproperURL.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 404
    Then Verify response header Business code "business-code" is "1303" and Verify error details "error_details[0]" in response body is "Not Found"


  Scenario: Test Issuing1 API Standard Post API No Data AvailableOn DB Issuing1 Premium25
    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing1_Premium_User_Send_Payload_No_Data_AvailableOn_DB.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1312" and Verify error details "error_details[0]" in response body is "No data found for given parameters"


  Scenario: Test Issuing1 API Standard Post API invalid Json format Field Missing Issuing1 Premium26
    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    When User sends Query Parameter as "correlation-id" and "787670ee-c312-46a5-abce-92f6465fa2e8"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlation-id|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing1_Premium_User_Send_invalid_Json_format_Field_Missing.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 400
    Then Verify response header Business code "business-code" is "1311" and Verify error details "error_details[0]" in response body is "Request format is incorrect"
