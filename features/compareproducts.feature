Feature: As a user
  So that i can choose between products
  I want to compare products based on their specification

Background:
   Given the following products have been added to product table
    | name          | price     | category_id | brand_id  |
    | iphone 5s     | 20000     | 1           | 1         |
    | LG G5         | 15000     | 1           | 2         |
    | Sony D3200    | 19000     | 2           | 3         |
  Given the following products have been added to specification table
    | id  | code                  | name                  |
    | 1   | 'weight'              | 'Weight'              |
    | 2   | 'picture-resolution'  | 'Picture Resolution'  |
    | 3   | 'l3-cache'            | 'l3-cache'            |

  Given the following products have been added to product specification table
    | value               | product_id  | specification_id  |
    | '183 g (6.46 oz)'   | 1           | 1                 |
    | '126 g (6.46 oz)'   | 1           | 1                 |
    | 'Yes'               | 2           | 2                 |


  Scenario: Compare two products with same category
    Given I am on the compare page for product "1" and product "2"
    Then I should see comparison between the "iphone 5s" and "LG G5"

  Scenario: Compare two products with different category
    Given I am on the compare page for product "1" and product "3"
    Then I should see an error "Error Products should be of same category"

  Scenario: Compare same products
    Given I am on the compare page for product "1" and product "1"
    Then I should see an error same product "Same products cannot be compared"

  Scenario: Compare when first product is nil
    Given I am on the compare page for product "nil" and product "1"
    Then I should see invalid error for first product "Invalid Request"

  Scenario: Compare when second product is nil
    Given I am on the compare page for product "1" and product "nil"
    Then I should see invalid error for second product "Invalid Request"

  Scenario: Compare when first product id is 0
    Given I am on the compare page for product "0" and product "1"
    Then I should see invalid id for first product "Invalid Request"

  Scenario: Compare when second product is 1
    Given I am on the compare page for product "1" and product "0"
    Then I should see invalid id for second product "Invalid Request"

  Scenario: Compare when second product is 1
    Given I am on the compare page for product "1" and product "0"
    Then I should see invalid id for second product "Invalid Request"

  Scenario: Compare when second product is 1
    Given I am on the compare page for product "1" and product "0"
    Then I should see invalid id for second product "Invalid Request"

  Scenario: Compare when one product do not have the few specification
    Given I am on the compare page for product "1" and product "2"
    Then I should see comparison and one of the specification is 0
