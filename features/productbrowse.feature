Feature: Filter and sort the products
  As a user,
  I want to be able to sort and filter the products
  So that people can focus on specific products

  Background: products have been added to database

    Given the following categories have been added to the database
      |id|name        |code  |
      |4 |mobile      |MS    |

    Given the following brands have been added to the database
      |id|name        |code  |
      |1|samsung      |SAM    |

    Given the following products have been added to database
      |id| name                    | price | category_id | brand_id | image  |
      |1| iphone 6S           | 60000 | 4           | 1        | http://shopbuzz.pk/images/products/profile/1-apple-iphone-5-16gb-price-in-pakistan.jpg |
      |2| samsung galaxy S6            | 50000 | 4           | 2        | http://shopbuzz.pk/images/products/profile/1-apple-iphone-5-16gb-price-in-pakistan.jpg |


  @javascript
  Scenario: To filter the usedproducts based on minimum price
    Given I am on the browse page
    When I fill the min value
    Then I should see only the product "iphone 6S"
  @javascript
  Scenario: To filter the products based on maximum price
    Given I am on the browse page
    When I fill the max value
    Then I should see only the product "samsung galaxy S6"

  @javascript
  Scenario: To filter the products based on maximum price
    Given I am on the browse page
    When I check the apple brand
    Then I should see only the brand products "iphone 6S"

