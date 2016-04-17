Feature: As an admin
  So that I can manage categories
  I should be able to CRUD categories from the admin backend
  Background: Users and Categories have been added to database and signedin
    Given the following user are added to db as admin
      | email                    | password            | password_confirmation
      | test@gmail.com           | password            | password
    And  the following products have been added to category table
      | code                | name      |
      | digital-cameras     | Digital Cameras     |
      | dslr-cameras        | DSLR Cameras   |
    And I am on admin login page
    And I fill Email "test@gmail.com" and Password "password"
    And I click Login
    And I click on "Categories"

  Scenario: View Categories
    Then I should be redirected to "/admin/categories"
    When I click on View for category2
    Then I should be redirected to "/admin/categories/2"
    And I should see "Categories"
  Scenario: Edit Products
    Then I should be redirected to "/admin/categories"
    When I click on Edit for category2
    Then I should be redirected to "/admin/categories/2/edit"
    When I fill "Name" with "Digi"
    And I click on "Update Category"
    Then I should see "Category was successfully updated."




