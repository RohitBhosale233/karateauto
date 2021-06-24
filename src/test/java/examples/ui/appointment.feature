Feature: Appointment Booking automation

  Background:
    * configure driver = { type: 'chrome' }

  Scenario: Login the user and book appointment
    Given driver 'https://katalon-demo-cura.herokuapp.com/'
    And click('#btn-make-appointment')
    And input('#txt-username','John Doe')
    And input('#txt-password','ThisIsNotAPassword')
    When click('#btn-login')
    * waitUntil("document.readyState == 'complete'")
    Then click('#combo_facility > option:nth-child(2)')
    Then click('#chk_hospotal_readmission')
    Then click('#appointment > div > div > form > div:nth-child(3) > div > label:nth-child(2)')
    Then input('#txt_visit_date','19/05/2021')
    Then input('#txt_comment','Problem with neck')
    Then click('#btn-book-appointment')
    * waitUntil("document.readyState == 'complete'")
    And match text('#comment') == 'Problem with neck'
    * close()