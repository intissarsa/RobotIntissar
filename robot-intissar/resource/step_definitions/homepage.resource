*** Settings ***
Resource    ../../Resource/page_objects/webpage.Resource

*** Variables ***
#xpath
${lctr_home}    //a[text()=" Home"]
${lctr_product}    //a[text()=" Products"]
${text_features items}    //h2[text()="Features Items"]


*** Keywords ***
the automation exercise web page is launched
    [Documentation]    verfies that the homepage is available
    Wait Until Page Contains Element     ${lctr_home}
    Wait Until Page Contains Element    ${lctr_product}
    Wait Until Page Contains Element    ${text_features items}