*** Settings ***
Resource    ../../Resource/page_objects/webpage.Resource

*** Variables ***
#xpath
${lctr_search}    //input[@name="search"]
${lctr_Continue Shopping}    //button[text()="Continue Shopping"]

*** Keywords ***
the user navigate to the Products page
    [Documentation]     Navigate to page 'Products' and Verify if search bar is visible
    Click Element    //a[text()=" Products"]
    Wait Until Page Contains Element    ${lctr_search}

he search for 'men tshirt'
    [Documentation]    5.write 'men tshirt'  6.Click on 'search button' 7. Verify 'men tshirt' is visible
    Input Text    id=search_product    men tshirt
    Click button    id=submit_search
    Wait Until Element Is Visible    //div[@class="productinfo text-center"]//p[text()="Men Tshirt"]

he adds the product to the cart
    Click Element    (//a[text()="Add to cart"])[1]
    Wait Until Element Is Visible    ${lctr_Continue Shopping}
    Click Element    ${lctr_Continue Shopping}

he adds a second item to the cart
    [Documentation]    the same process for adding a product to the cart ie: search + click on search bar + verify the product is visible

    Input Text    id=search_product    Blue Top
    Click button    id=submit_search
    Wait Until Element Is Visible    //div[@class="productinfo text-center"]//p[text()="Blue Top"]
    Wait Until Element Is Enabled    (//a[text()="Add to cart"])[1]
    click element    (//a[text()="Add to cart"])[1]
    Wait Until Element Is visible    ${lctr_Continue Shopping}
    Click Element    ${lctr_Continue Shopping}