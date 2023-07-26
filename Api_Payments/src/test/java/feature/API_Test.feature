Feature:TESTING PAYMENTS API

  Scenario: Test Acquring1 API Premium Post API
    Given User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"

       And User sends headers as
       |Key|Value|
       |Content-Type|application/json|
       |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "post.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 200

  Scenario: Test Acquring1 API Standard Post API
    Given User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "User1_should_be_able_to_make_successful_API_call_with_status_code_200.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 200



  Scenario: Test Acquring1 API Standard Post API using Terminal ID 103 and date range (01-05-2021 to 01-09-2021)
   Given User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
     |Key|Value|
     |Content-Type|application/json|
     |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Terminal_ID_103_and_date_range_01-05-2021_to_01-09-2021.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 200

  Scenario: Test Acquring1 API Standard Post API
    Given User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
     |Key|Value|
      |Content-Type|application/json|
     |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "input_parameter_without_date_range.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquring1 API Standard Post API
    Given User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "User_tries_making_an_API_call_with_incorrect_date_range_value.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400

  Scenario: Test Acquring1 API Standard Post API
    Given User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Send_the_input_schema_with_incorrect_ date_range.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400

  Scenario: Test Acquring1 API Standard Post API
    Given User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Send_the_input_schema_with_date_range_exactly_08_years.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquring1 API Standard Post API
    Given User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Send_the_api_request_without_terminal_id.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquring1 API Standard Post API
    Given User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Send_the_api_request_with_invalid_terminal_ID.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquring1 API Standard Post API
    Given User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Send_the_api_request_by_passing_less_than_16_characters_in_terminal_ID.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquring1 API Standard Post API
    Given User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Send_API_call__by_passing__special_characters_in_terminal_ID.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400



  Scenario: Test Acquring1 API Standard Post API
    Given User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Send_API_call_by_passing_only_alphabets_in_terminal_ID.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquring1 API Standard Post API
    Given User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Send_the_Api_request_with_no_date_range_and_terminal_ID.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquring1 API Standard Post API
    Given User send URl Base Url as "https://acquiring-1-acquiring-qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Send_an_api_request_call_with_improper_URL.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400



  Scenario: Test Acquring1 API Premium Post API
    Given User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "User_should_be_able_to_make_successful_API_call_with_status_code_200.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400



  Scenario: Test Acquring1 API Premium Post API
    Given User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "User_should_be_able_to_make_successful_Premium_API_call_with_status_code_200.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400



  Scenario: Test Acquring1 API Premium Post API
    Given User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Pass_the_input_schema_without_the_date_parameter.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400

  Scenario: Test Acquring1 API Standard Post API
    Given User send URl Base Url as "https://acquiring-1-acquiring-qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Error_code_400_Data_not_found_validation_for_standard_subscription.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquring1 API Standard Post API
    Given User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Error_code_400-for_accessing_date_that_is_in_future_for_standard_subscription.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400



  Scenario: Test Acquring1 API Standard Post API
    Given User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Error_code_400_for_api_request_with_start_date_after_end_date_standard_.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400



  Scenario: Test Acquring1 API Standard Post API
    Given User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Send_an_api_Error_code_500_validation_for_with_no_subscription_data.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 500

  Scenario: Test Acquring1 API  Other subscription as Post API
    Given User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|11f9bfd2-963d-4817-8a0b-a30b92e5660d |
    And User sends body as "User_sends_Payload_with_subscription_value_other_than_standard_and_premium.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 500


  Scenario: Test Acquring1 API Premium Post API
    Given User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|11f9bfd2-963d-4817-8a0b-a30b92e5660d |
    And User sends body as "User_Send_Payload_with_date_range_exactly_08_years_Premium.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400



  Scenario: Test Acquring1 API Premium Post API
    Given User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|11f9bfd2-963d-4817-8a0b-a30b92e5660d |
    And User sends body as "Send_the_input_schema_with_end_date_later_than_today's_date_Premium.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquring1 API Premium Post API
    Given User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|11f9bfd2-963d-4817-8a0b-a30b92e5660d|
    And User sends body as "Premium_Payload_without_StatDate_and_EndDate.Json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400



  Scenario: Test Acquring1 API Premium Post API
    Given User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|787670ee-c312-46a5-abce-92f6465fa2e8|
    And User sends body as "Send_Payload_with_same_as_start_date_and_end date_Premium.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquring1 API Premium Post API
    Given User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|11f9bfd2-963d-4817-8a0b-a30b92e5660d |
    And User sends body as "Payload_date_range_exceeding_6_months_for_premium.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400


  Scenario: Test Acquring1 API Premium Post API
    Given User send URl Base Url as "https://acquiring-1-acquiring.qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
      |correlationId|11f9bfd2-963d-4817-8a0b-a30b92e5660d |
    And User sends body as "Payload_with_incorrect_date_format_Premium.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400
