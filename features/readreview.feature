Feature: Read review for the products

  As a user,
  I want to be able to read reviews for a product
  So that I can decide whether the product is good

  Background:

<<<<<<< HEAD
=======

>>>>>>> 8ba5c2d7666f1316394b1d194a9079e2a9be7a8a
    Given the following categories have been added to the database
      |name        |code  |
      |mobile      |MS    |

    Given the following products have been added to the database
      | name                    | price | category_id | brand_id | image                                                                                  |
      | iphone 5 16GB           | 20000 | 1           | 1        | http://shopbuzz.pk/images/products/profile/1-apple-iphone-5-16gb-price-in-pakistan.jpg |


  Scenario: Read a product review
    Given I am on the product page
    When I click to see all the reviews of the product
    Then I should see the message reviews on
