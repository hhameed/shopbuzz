Feature: Write review for the products
  As a user,
  I want to be able to read reviews for a product
  So that I can decide whether the product is good

  Background:

    Given the following products have been added to the database
      | name                    | price | category_id | brand_id | image                                                                                  |
      | iphone 5 16GB           | 20000 | 1           | 1        | http://shopbuzz.pk/images/products/profile/1-apple-iphone-5-16gb-price-in-pakistan.jpg |


  Scenario: Write a product review
    Given I am on the product page
    When I click to see all the reviews of the product
    Then I should be redirected to the review index page