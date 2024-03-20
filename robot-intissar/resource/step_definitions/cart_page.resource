*** Settings ***
Resource    ../../Resource/page_objects/webpage.Resource

Library    String

*** Variables ***
#xpath
${lctr_Shopping Cart}     //li[text()="Shopping Cart"]
${lctr_Men Tshirt}    //a[text()="Men Tshirt"]
${lctr_Blue Top}    //a[text()="Blue Top"]

*** Keywords ***

he navigates to the cart page
    [Documentation]    navigate to the cart page and verifies that the page is actually loaded
    Click Element    //a[text()=" Cart"]
    Wait Until Element Is Visible    ${lctr_Shopping Cart}

the products are well added to the cart
    Wait Until Element Is Visible    ${lctr_Men Tshirt}
    Wait Until Element Is Visible    ${lctr_Blue Top}

the sum of the products is correct
    # the sum isn't avaible in the cart page 
    ${text1}    Get Text    (//p[@class="cart_total_price"])[1]
    ${pr_price1}    Split String    ${text1}    ${SPACE}
    
    ${text2}    Get Text    (//p[@class="cart_total_price"])[2]
    ${pr_price2}    Split String    ${text2}    ${SPACE}
    ${actual_sum}    Evaluate    ${pr_price1}[1] + ${pr_price2}[1]

   # ${cart_sum}    Get Text    total
    
   # Should Be Equal    ${cart_sum}    ${actual_sum}