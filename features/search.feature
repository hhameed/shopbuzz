Feature: As a user
So that I can search product by keywords
I should be able query using menu’s typeahead search box

Background:
Given the following products have been added to the database
| name                    | price | category_id | brand_id | image                                                                                  |
| iphone 5 16GB           | 20000 | 1           | 1        | http://shopbuzz.pk/images/products/profile/1-apple-iphone-5-16gb-price-in-pakistan.jpg |
| Samsung Galaxy          | 15000 | 1           | 2        | http://shopbuzz.pk/images/products/profile/1-apple-iphone-5-16gb-price-in-pakistan.jpg |
| iphone 6                | 20000 | 1           | 1        | http://shopbuzz.pk/images/products/profile/1-apple-iphone-5-16gb-price-in-pakistan.jpg |

  @javascript
Scenario: Autocomplete
  Given I am on the home page
  And I fill in search bar with "ip"
  And I choose "iphone 5 16GB" in the autocomplete list1
  Then the search bar should contain "iphone 5 16GB"