Feature: Search on Booking.com

  Scenario: Search by city
    Given User is looking for hotels in 'United States' city
    When User does search
    Then Hotel 'North Beach Resort & Villas' should be on the search results page
    Then Hotel 'North Beach Resort & Villas' rating is '8,7'
