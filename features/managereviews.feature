Feature: As a user
  So that i can share my review about the seller
  I should be able to write comments for the seller
  Background: Users and Categories have been added to database and signedin
    Given the following user are added to db as admin
      | email                    | password            | password_confirmation
      | test@gmail.com           | password            | password
    And  the following products have been added to Review table
      | product_id                | name        |  email          |    rating|     content |
      | 1                         | Rishabh     | amb@abc.com     | 5        | abcd        |
      | 2                         | Balaji      | nj@gmail.com    | 4        |  nmnh       |
    And I am on admin login page
    And I fill Email "test@gmail.com" and Password "password"
    And I click Login
    And I click on "Product Reviews"

  Scenario: View Product Review
    Then I should be redirected to "/admin/product_reviews"
    When I click on View for review1
    Then I should be redirected to "/admin/product_reviews/1"
    And I should see "Product Reviews"
  Scenario: Edit Product Review
    Then I should be redirected to "/admin/product_reviews"
    When I click on Edit for review1
    Then I should be redirected to "/admin/product_reviews/1/edit"
    When I fill "Rating" with "4"
    And I click on "Update Product review"
    Then I should see "Product review was successfully updated."




