Feature: Write review for the products
  As a user,
  I want to be able to write reviews for product I have used
  So that people can see how is the product

Background: products have been added to database

    Given the following categories have been added to the database
    |name        |code  |
    |mobile      |MS    |

    Given the following products have been added to the database
    | name                    | price | category_id | brand_id | image                                                                                  |
    | iphone 5 16GB           | 20000 | 1           | 1        | http://shopbuzz.pk/images/products/profile/1-apple-iphone-5-16gb-price-in-pakistan.jpg |


@javascript
Scenario: Write a product review
      Given I am on the product page
      When I click on Post Comment Button
      When I fill in the form with with name dengkliu rating 3 and content a and click save
      Then I should see a message "Product review was successfully created"
