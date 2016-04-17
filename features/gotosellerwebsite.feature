Feature: Go to seller product page
  As a user
  So that I can go to the sellers’ websites to place order
  I should be able to click on the seller’s offer and go directly to product page on sellers’ website

  Scenario: Link visible on th page
    Given there is a product with a seller link
    When I visit the product's page
    Then I should see the link shown on the page

  Scenario: Clicking the seller link
    Given there is a product with a seller link
    When I visit the product's page and click the seller product link
    Then I should be taken to a page that redirects to the seller product page
