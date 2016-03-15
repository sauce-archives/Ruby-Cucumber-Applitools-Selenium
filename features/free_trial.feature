Feature: Sauce Labs Free Trial
  
  Scenario: Verify Free Trial sign-up form
    Given I am on the Sauce Labs homepage
    And I conduct a visual test
    And I click on the free trial button
    Then I should see the free trial sign-up form