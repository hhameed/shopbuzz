Feature: Write review for the sellers
  As a user,
  I want to be able to write reviews for seller
  So that people can see the reviews abou the seller

  Background: products have been added to database

    Given the following categories have been added to the database
      |name        |code  |
      |mobile      |MS    |


    Given the following products have been added to the database
      | name          |id            | price | category_id | brand_id | image                                                                                  |
      | iphone 5 16GB |1             | 20000 | 1           | 1        | http://shopbuzz.pk/images/products/profile/1-apple-iphone-5-16gb-price-in-pakistan.jpg |

    Given the following sellers have been added to the database

      | name           |id       |logo                                           | website
      | shophive       |1        |http://shopbuzz.pk/images/sellers/shophive.png | http://shophive.com



  @javascript
  Scenario: Write a seller review
    Given I am on the seller page
    When  I click on Comment Button
    When I fill in the form with with name dengkliu rating 3 and content a and click save
    Then I should see a message "Seller review was successfully created"
