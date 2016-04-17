Feature: Filter and sort the Usedproducts
  As a user,
  I want to be able to sort and filter the products
  So that people can focus on specific Usedproducts

  Background: Usedproducts have been added to database

    Given the following categories have been added to the database
      |id|name        |code  |
      |4 |mobile      |MS    |

    Given the following brands have been added to the database
      |id|name        |code  |
      |1|samsung      |SAM    |

    Given the following cities have been added to database
      |id|name        |province_id|
      |1|new york      |1         |

    Given the following province have been added to database
      |id|name        |
      |1|new york state|

    Given the following Usedproducts have been added to database
      |id| name        | price | category_id | city_id | warranty  | usage_duration| product_id|condition_ex|
      |1| balaji       | 40000 | 4           | 1       | 1-3 Months Warranty| 1-3 Months Used| 1  |3          |
      |2| Rishabh       |30000 | 4           | 1       | 3-6 Month Warranty| 4-12 Months Used| 1  |4        |


    Given the following products have been added to database
      |id| name                    | price | category_id | brand_id | image  |
      |1| iphone 6S           | 60000 | 4           | 1        | http://shopbuzz.pk/images/products/profile/1-apple-iphone-5-16gb-price-in-pakistan.jpg |
      |2| samsung galaxy S6            | 50000 | 4           | 2        | http://shopbuzz.pk/images/products/profile/1-apple-iphone-5-16gb-price-in-pakistan.jpg |


  @javascript
  Scenario: To filter the products based on maximum price
    Given I am on the usedproduct page
    When I click on the filterbutton
    When I click on the condition
    Then I should see only the usedproduct posted by  "balaji"

  @javascript
  Scenario: To filter the products based on maximum price
    Given I am on the usedproduct page
    When I click on the filterbutton
    When I click on the warranty
    Then I should see only the usedproduct posted by  "balaji"

  @javascript
  Scenario: To filter the products based on maximum price
    Given I am on the usedproduct page
    When I click on the filterbutton
    When I click on the city
    Then I should see only the usedproduct posted by  "balaji"

  @javascript
  Scenario: To filter the products based on maximum price
    Given I am on the usedproduct page
    When I click on the filterbutton
    When I click on the used duration
    Then I should see only the usedproduct posted by  "balaji"

  @javascript
  Scenario: To filter the products based on maximum price
    Given I am on the usedproduct page
    When I click on the filterbutton
    When I type the name of the used product
    Then I should see only the usedproduct posted by  "balaji"