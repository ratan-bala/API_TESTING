Feature:TESTING PAYMENTS API

  Scenario: Test Acquring1 API Premium Post API
    Given User send URl Base Url as "https://acquiring-1-acquiring-qa.apps.greencluster.openshift.com"

       And User sends headers as
       |Key|Value|
      |Content-Type|application/json|
    And User sends body as "post.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 200


  Scenario: Test Acquring1 API Standard Post API using Terminal ID 103 and date range (01-05-2021 to 01-09-2021)
    Given User send URl Base Url as "https://acquiring-1-acquiring-qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
    And User sends body as "Terminal_ID_103_and_date_range_01-05-2021_to_01-09-2021.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 200

  Scenario: Test Acquring1 API Standard Post API
    Given User send URl Base Url as "https://acquiring-1-acquiring-qa.apps.greencluster.openshift.com"
    And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
    And User sends body as "input_parameter_without_date_range.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 400



