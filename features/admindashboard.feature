Feature: As an admin
So that I can view the summary of current activities
I want to view, recent comments, new products, top products, new mapping candidate products, contact messages in the admin dashboard

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

  Scenario: Dashboard should contain recent products
    Then I should see "Signed in successfully."
    Then I should see "iphone 5s"

  Scenario: OnClick product redirect to product page
   When I click on "iphone 5s"
   Then I should be redirected to "/admin/products/1"
   And I should see "Product Detail"

