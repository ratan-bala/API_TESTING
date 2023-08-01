Feature: TESTING PAYMENTS API
  Scenario: Test Acquiring1 API Standard Post API successful Status Code 200 AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "User_Send_Payload_With_successful_Status_Code_200_AQ1_Standard.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 200

  Scenario: Test Acquiring1 API Standard Post API successful Business  Code  AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "User_Send_Payload_With_successful_Business_Code_AQ1_Standard.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 200

  Scenario: Test Acquiring1 API Standard Post API successful correlation Id AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "User_Send_Payload_With_successful_correlationId_AQ1_Standard.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 200

  Scenario: Test Acquiring1 API Standard Post API invalid Json format Field Missing AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "User_Send_invalid_Json_format_Field_Missing_AQ1_Standard.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400

  Scenario: Test Acquiring1 API Standard Post API Without Date Parameter AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "User_Send_Payload_Without_Date_Parameter_AQ1_Standard.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquiring1 API Standard Post API More than 8 Years old AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "User_Send_Payload_Morethan_8_Years_old_AQ1_Standard.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquiring1 API Standard Post API More than 6 Months Old AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "User_Send_Payload_Morethan_6_Months_Old_AQ1_Standard.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
  Scenario: Test Acquiring1 API Standard Post API Exactly 8 Years old AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "User_Send_Payload_Exactly_8_Years_old_AQ1_Standard.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquiring1 API Standard Post API Incorrect Date Format AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "User_Send_Payload_Incorrect_Date_Format_AQ1_Standard.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
  Scenario: Test Acquiring1 API Standard Post API Without Terminal id AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "User_Send_Payload_Without_Terminalid_AQ1_Standard.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400

  Scenario: Test Acquiring1 API Standard Post API Invalid Terminal id AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "User_Send_Payload_Invalid_Terminalid_AQ1_Standard.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400

  Scenario: Test Acquiring1 API Standard Post API Less than 16 Characters Terminal id AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "User_Send_Payload_Lessthan_16_Characters_Terminalid_AQ1_Standard.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquiring1 API Standard Post API Special Characters in Terminal id AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "User_Send_Payload_Special_Characters_in_Terminalid_AQ1_Standard.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquiring1 API Standard Post API Alphabets Characters in Terminal id AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "User_Send_Payload_Alphabets_Characters_in_Terminalid_AQ1_Standard.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquiring1 API Standard Post API Without Terminal id And Date Range AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "User_Send_Payload_Without_Terminalid_And_DateRange_AQ1_Standard.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquiring1 API Standard Post API No Subscription AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "User_Send_Payload_No_Subscription_AQ1_Standard.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 500

  Scenario: Test Acquiring1 API Standard Post API Improper URL AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-2-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "User_Send_Payload_ImproperURL_AQ1_Standard.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 404


  Scenario: Test Acquiring1 API Standard Post API No Data Available on DB AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "User_Send_Payload_No_Data_AvailableOn_DB_AQ1_Standard.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquiring1 API Standard Post API End Date As Todays Date AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "User_Send_Payload_EndDate_As_TodaysDate_AQ1_Standard.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquiring1 API Standard  StartDate And EndDate Both Are Same AQ1 Standard
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "User_Send_Payload_StartDate_And_EndDate_Both_Are_Same_AQ1_Standard.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400

  Scenario: Test Acquiring1 API Premium Post API With successful Status Code 200 AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "User_Send_Payload_With_successful_Status_Code_200_AQ1_Premium.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 200
  Scenario: Test Acquiring1 API Premium Post API With successful Business Code 200 AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "User_Send_Payload_With_successful_Bussiness_Code_200_AQ1_Premium.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 200

  Scenario: Test Acquiring1 API Premium Post API Without Date Parameter AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|11f9bfd2-963d-4817-8a0b-a30b92e5660d |
    And User sends body as "User_Send_Payload_Without_Date_Parameter_AQ1_Premium.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquiring1 API Premium Post API More than 8 Years old AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|11f9bfd2-963d-4817-8a0b-a30b92e5660d |
    And User sends body as "User_Send_Payload_Morethan_8_Years_old_AQ1_Premium.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquiring1 API Premium Post API More than 6 Months Old AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|11f9bfd2-963d-4817-8a0b-a30b92e5660d |
    And User sends body as "User_Send_Payload_Morethan_6_Months_Old_AQ1_Premium.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquiring1 API Premium Post API Incorrect Date Format AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|11f9bfd2-963d-4817-8a0b-a30b92e5660d|
    And User sends body as "User_Send_Payload_Incorrect_Date_Format_AQ1_Premium.Json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquiring1 API Premium Post API Without Terminal id AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "User_Send_Payload_Without_Terminalid_AQ1_Premium.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquiring1 API Premium Post API Invalid Terminal id AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|11f9bfd2-963d-4817-8a0b-a30b92e5660d |
    And User sends body as "User_Send_Payload_Invalid_Terminalid_AQ1_Premium.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquiring1 API Premium Post API Less than 16 Characters Terminal id AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|11f9bfd2-963d-4817-8a0b-a30b92e5660d |
    And User sends body as "User_Send_Payload_Lessthan_16_Characters_Terminalid_AQ1_Premium.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquiring1 API Premium Post API Special Characters in Terminal id AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|11f9bfd2-963d-4817-8a0b-a30b92e5660d |
    And User sends body as "User_Send_Payload_Special_Characters_in_Terminalid_AQ1_Premium.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquiring1 API Premium Post API Alphabets Characters in Terminal id AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|11f9bfd2-963d-4817-8a0b-a30b92e5660d |
    And User sends body as "User_Send_Payload_Alphabets_Characters_in_Terminalid_AQ1_Premium.json"

    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquiring1 API Premium Post API Without Terminal id And Date Range AQ1 Premium
    Given User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|11f9bfd2-963d-4817-8a0b-a30b92e5660d |
    And User sends body as "User_Send_Payload_Without_Terminalid_And_DateRange_AQ1_Premium.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquiring1 API Premium Post API  Without Subscription AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|11f9bfd2-963d-4817-8a0b-a30b92e5660d |
    And User sends body as "User_Send_Payload_No_Subscription_AQ1_Premium.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 500


  Scenario: Test Acquiring1 API Premium Post API Improper URL AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-2-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|11f9bfd2-963d-4817-8a0b-a30b92e5660d |
    And User sends body as "User_Send_Payload_ImproperURL_AQ1_Premium.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquiring1 API Premium Post API exactly 8 Years old AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|11f9bfd2-963d-4817-8a0b-a30b92e5660d |
    And User sends body as "User_Send_Payload_Exactly_8_Years_old_AQ1_Premium.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquiring1 API Premium Post API No Data Available on DB AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
    And User sends body as "User_Send_Payload_No_Data_AvailableOn_DB_AQ1_Premium.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquiring1 API Premium Post API End Date As Todays Date AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|11f9bfd2-963d-4817-8a0b-a30b92e5660d |
    And User sends body as "User_Send_Payload_EndDate_As_TodaysDate_AQ1_Premium.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400

  Scenario: Test Acquiring1 API Premium Post API invalid Json format Field Missing AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|11f9bfd2-963d-4817-8a0b-a30b92e5660d |
    And User sends body as "User_Send_invalid_Json_format_Field_Missing_AQ1_Premium.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400

  Scenario: Test Acquiring1 API Premium Post API Payload StartDate And End Date Both Are Same AQ1 Premium
    Given   User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|11f9bfd2-963d-4817-8a0b-a30b92e5660d |
    And User sends body as "User_Send_Payload_StartDate_And_EndDate_Both_Are_Same_AQ1_Premium.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400



    # ********Issuing One Test Cases ******************************


  Scenario: Test Issuing1 Post API successful Status Code 200 Issuing1 Standard

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "User_Send_Payload_With_successful_Status_Code_200_Issuing1_Standard.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 200

  Scenario: Test Issuing1 Post API successful Business Code Issuing1 Standard

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing_1_Standard_Send_Payload_With_successful_Business_Code.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 200

  Scenario: Test Issuing1 Post API Without Date Parameter Issuing 1 Standard

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing_1_Standard_Send_Payload_Without_Date_Parameter.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Issuing1 Post API More than 8 Years old Issuing1 Standard

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing_1_Standard_User_Send_Payload_More_than_8_Years_old.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 400

  Scenario: User_Send_Payload_More_than_6_Months_Old_Issuing1_Standard

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing1_Standard_Send_Payload_More_than_6_Months_Old.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 400

  Scenario: Test Issuing1 Post API Incorrect Date Format Issuing1 Standard

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing_1_Standard_Send_Payload_Incorrect_Date_Format.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 400

  Scenario: Test Issuing1 Post API EndDate As Todays Date Issuing1 Standard

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing_1_Standard_User_Send_Payload_EndDate_As_Today_Date.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 400

  Scenario: Test Issuing1 Post API Without card token Issuing1 Standard

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing_1_Standard_User_Send_Payload_Invalid_card_token.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 400

  Scenario: Test Issuing1 Post API Alphabets Characters in cardtoken Issuing1 Standard

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing_1_Standard_User_Send_Payload_Alphabets_Characters_in_card_token.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 400

  Scenario: Test Issuing1 Post API No Subscription Issuing1 Standard

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing_1_Standard_User_Send_Payload_No_Subscription.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 500


  Scenario: Test Issuing1 Post API Improper URL Issuing1 Standard

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing_1_Standard_User_Send_Payload_ImproperURL.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 404

  Scenario: Test Issuing1 Post API No Data AvailableOn DB Issuing1 Standard

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing1_Standard_User_Send_Payload_No_Data_AvailableOn_DB.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 400

  Scenario: Test Issuing1 Post API invalid Json format Field Missing Issuing1 Standard

    Given   User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing1_Standard_User_Send_invalid_Json_format_Field_Missing.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Issuing Cardholder API Premium Post API
    Given User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Issuing_1_Premium_User_able_to_make_successful_API_call_with_status_code_200.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 200


  Scenario: Test Issuing Cardholder API Premium Post API
    Given User send URl Base Url as "https://issuing-1-issuing.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as  " User_should_be_able_to_make_successful_API_call_with_status_code_200_Premium.json"
    And User sends Resources as "/reports/v1/issuingMada" with call as "Post"
    Then User expects a Response code of 400





