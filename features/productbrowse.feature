Feature: Filter and sort the products
  As a user,
  I want to be able to sort and filter the products
  So that people can focus on specific products

  Background: products have been added to database

    Given the following products have been added to database
      | name                    | price | category_id | brand_id | image  |
      | iphone 6S           | 60000 | 4           | 1        | http://shopbuzz.pk/images/products/profile/1-apple-iphone-5-16gb-price-in-pakistan.jpg |
      | samsung galaxy S6            | 50000 | 4           | 2        | http://shopbuzz.pk/images/products/profile/1-apple-iphone-5-16gb-price-in-pakistan.jpg |

  @javascript
  Scenario: To filter the products based on brand
    Given I am on the browse page
    When I click on Brand Samsung
