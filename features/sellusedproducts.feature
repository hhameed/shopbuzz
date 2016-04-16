Feature: As a user,
  So that I can buy used products,
  I should be able to sell my

  Background: products have been added to database

    Given the following province have been added to database
      |id  |name          |
      |1   |new york state|
    Given the following cities have been added to database
      |id   |name        |province_id|
      |1    |new york    |1          |

    Given the following categories have been added to the database
      |name        |code  |
      |mobile      |MS    |


    Given the following products have been added to the database
      | name          |id            | price | category_id | brand_id | image                                                                                  |
      | iphone 5 16GB |1             | 20000 | 1           | 1        | http://shopbuzz.pk/images/products/profile/1-apple-iphone-5-16gb-price-in-pakistan.jpg |


  @javascript
  Scenario: Successfully view the usedproduct page
    Given I am on the Product page
    When I click the sell usedproduct page link
    When I fill in the form and click submit
    Then I should see a message "Used product was successfully created"



