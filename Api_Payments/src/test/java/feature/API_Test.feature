Feature:TESTING PAYMENTS API

  Scenario: Test Acquring1 API Premium Post API
    Given User send URl Base Url as "https://acquiring-1-acquiring-qa.apps.greencluster.openshift.com"

       And User sends headers as
      |Key|Value|
      |Content-Type|application/json|
    And User sends body as "post.json"
    And User sends Resources as "/reports/v1/acquiringPOSMada" with call as "Post"
    Then User expects a Response code of 200