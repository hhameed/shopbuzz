Feature: As an admin
So that I can manage products
I should be able to CRUD products from the admin backend
  Background: Users have been added to database and signedin
    Given the following user are added to db as admin
      | email                    | password            | password_confirmation
      | test@gmail.com           | password            | password
    And  the following products have been added to product table
      | name          | price     | category_id | brand_id  |
      | iphone 5s     | 20000     | 1           | 1         |
      | LG G5         | 15000     | 1           | 2         |
      | Sony D3200    | 19000     | 2           | 3         |
    And I am on admin login page
    And I fill Email "test@gmail.com" and Password "password"
    And I click Login
    And I click on "Products"

  Scenario: View Products
    Then I should be redirected to "/admin/products"
    When I click on "2"
    Then I should be redirected to "/admin/products/2"
    And I should see "Product Detail"






