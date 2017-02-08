Feature: View Song Entries
  In order to figure out what I should practice next
  I want to be able to see all the pieces a composer has made thus far

  Scenario: Search by Composer
    Given I visit the home page
    When I search for a composer
    Then I should see songs that that composer wrote