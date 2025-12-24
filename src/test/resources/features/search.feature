Feature: Search functionality

  Scenario: Verify DuckDuckGo search
    Given I open the target browser
    When I navigate to "https://duckduckgo.com/"
    Then I should see the page title contains "DuckDuckGo"
    When I search for "SHAFT_Engine"
    Then I close the browser