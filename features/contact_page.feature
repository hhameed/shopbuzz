Feature: Allow user to contact the site owner

  As a user
  So that I can reach the site admin
  I should be able to contact them via a contact form


  @javascript
  Scenario: Visit Contact Page
    Given I am on the contact page
    When I fill in the form with with name kiran email kiranyls@gmail.com and message a and click Submit
    Then I should see a message "Thank you for contacting us. We will respond to you as soon as possible"