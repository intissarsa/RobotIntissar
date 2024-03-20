*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Launch the automation exercise web app
    Open Browser    http://automationexercise.com    chrome
    Maximize Browser Window
