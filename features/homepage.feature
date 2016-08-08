Feature: Sauce Labs Homepage
  
  Scenario: Verify homepage title
    Given I am on the Sauce Labs homepage
    And I conduct a visual test
    Then the title of the page should be
      """
      Welcome | Sauce Labs
      """
