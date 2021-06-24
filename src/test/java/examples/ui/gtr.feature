Feature: Karate browser automation

  Background:
    * configure driver = { type: 'chrome' }

  Scenario:Google translate

    Given driver 'https://google.com'
    And input('input[name=q]', 'Google Translate English to Hindi hello')
    And click('input[name=btnK]')
    Then match text('/div/pre/span.class=Y2IQFc') == 'namaste'
