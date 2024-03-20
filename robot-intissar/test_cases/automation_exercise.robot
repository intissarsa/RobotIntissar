*** Settings ***
Library    SeleniumLibrary
Resource    ../Resource/page_objects/webpage.Resource
Resource    ../Resource/step_definitions/homepage.resource
Resource    ../Resource/step_definitions/products_page.resource
Resource    ../Resource/step_definitions/cart_page.resource
Test Setup    Launch the automation exercise web app

*** Test Cases ***

Automation exercise
    [Documentation]    This test case verifies the products added to the cart and ensures their correct summation
    Given the automation exercise web page is launched
    When the user navigate to the Products page
    AND he search for 'men tshirt'
    AND he adds the product to the cart
    AND he adds a second item to the cart
    AND he navigates to the cart page
    THEN the products are well added to the cart
    AND the sum of the products is correct


