Feature: As a user,
  So that I can buy used products,
  I should be to filter products, by price, location, product condition, usage duration etc

  Background: Used products have been added to database

    Given the following products have been added to the Used Product
      | name                    | condition_ex | product_id | contact_number | category_id |
      | Rishabh                 | 1            | 1          | 17392719828    | 1           |


  Scenario: Successfully view the usedproduct page
    Given I am on the Homepage
    When I click the usedproduct page link
    Then I should see the usedproduct page