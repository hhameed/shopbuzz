Feature: As an admin
So that I can view everything on website
I want to signin

  Background: Users have been added to database

    Given the following user are added to db as admin
      | email                    | password            | password_confirmation
      | test@gmail.com           | password            | password

  Scenario: User are admin
    Given I am on admin login page
    When I fill Email "test@gmail.com" and Password "password"
    And I click Login
    Then I should see "Signed in successfully."