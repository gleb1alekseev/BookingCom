Feature: Search on Booking.com

  Scenario: Search by city
    Given User is looking for hotels in 'United States' city
    When User does search
    Then Hotel 'North Beach Resort & Villas' should be on the search results page
    Then Hotel 'North Beach Resort & Villas' rating is '8,7'

  Scenario: Search rent in city
    Given User is looking for taxi on site
    And Choosing taxi from 'Berlin Brandenburg Airport Willy Brandt'
    And To place is 'Moxy Berlin Airport'
    And Choosing date
    And Count of passengers
    When User start search
    Then Check that 'minivan' on the page
