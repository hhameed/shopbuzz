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

