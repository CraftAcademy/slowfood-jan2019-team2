Feature: Visitor can see a list of categories with products
    As a visitor,
    In order to get an easy overview of the restaurants products
    I would like to be able to see a menu sorted in categories

    Background:
        Given the following categories exist
            | category |
            | main     |
            | starter  |
            | dessert  |

        And the following products exists
            | name         | price | description | category |
            | Pizza        | 10    | spicy       | main     |
            | Garlic bread | 3     | stinky      | starter  |
            | Chocolate    | 5     | fattening   | dessert  |


    Scenario: A visitor can see a list of products to choose from
        When I am on the "product" page
        Then I should see "Pizza"
        And I should see "Garlic bread"
        And I should see "Chocolate"
        And I should see "10 SEK" for "Pizza"
        And I should see "spicy" for "Pizza"
        And I should see "3 SEK" for "Garlic bread"
        And I should see "stinky" for "Garlic bread"
        And I should see "5 SEK" for "Chocolate"
        And I should see "fattening" for "Chocolate"