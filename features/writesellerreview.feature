Feature: Write review for the sellers
  As a user,
  I want to be able to write reviews for seller
  So that people can see the reviews abou the seller

  Background: products have been added to database

    Given the following sellers have been added to the database

      | name           |id       |logo                                           | website
      | shophive       |1        |shophive.png                                   | http://shophive.com



  @javascript
  Scenario: Write a seller review
    Given I am on the seller page
    When  I click on Comment Button
    When I fill in the form with with name kiran rating 3 and content a and click save
    Then I should see a message "Seller review was successfully created"
