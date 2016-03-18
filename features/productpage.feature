Feature: View Product Page

  As a user
  So that I can see all the information related to a product on a single page
  I want to be able to see product page with product information, new product prices and specifications

  Background: products have been added to database

    Given the following categories have been added to the database
      |name        |code  |
      |mobile      |MS    |

    Given the following products have been added to the database
      | name                    | price | category_id | brand_id | image                                                                                  |
      | iphone                  | 20000 | 1           | 1        | http://shopbuzz.pk/images/products/profile/1-apple-iphone-5-16gb-price-in-pakistan.jpg |


  @javascript
Scenario: Successfully view the product page
  Given I am on the ShopBuzz Homepage
  When I click the product page link
  Then I should see the product page
